#include "mlir/Tools/mlir-opt/MlirOptMain.h"

#include "mlir/Pass/Pass.h"
#include "llvm/Support/Debug.h"

#include "mlir/Dialect/Affine/Analysis/LoopAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/Utils.h"
#include "mlir/Dialect/Affine/LoopUtils.h"

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Bufferization/IR/Bufferization.h"
#include "mlir/Dialect/DLTI/DLTI.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/BuiltinOps.h"

#include "mlir/Transforms/Passes.h"

#include <iostream>

#define DEBUG_TYPE "bragghls-naive-loop-unroll"

using namespace mlir;

namespace bragghls {

/// Computes the cleanup loop lower bound of the loop being unrolled with
/// the specified unroll factor; this bound will also be upper bound of the main
/// part of the unrolled loop. Computes the bound as an AffineMap with its
/// operands or a null map when the trip count can't be expressed as an affine
/// expression.
static void getCleanupLoopLowerBound(AffineForOp forOp,
                                     unsigned unrollFactor,
                                     AffineMap &cleanupLbMap,
                                     SmallVectorImpl<Value> &cleanupLbOperands) {
  AffineMap tripCountMap;
  SmallVector<Value, 4> tripCountOperands;
  getTripCountMapAndOperands(forOp, &tripCountMap, &tripCountOperands);
  // Trip count can't be computed.
  if (!tripCountMap) {
    cleanupLbMap = AffineMap();
    return;
  }

  OpBuilder b(forOp);
  auto lbMap = forOp.getLowerBoundMap();
  auto lb = b.create<AffineApplyOp>(forOp.getLoc(), lbMap, forOp.getLowerBoundOperands());

  // For each upper bound expr, get the range.
  // Eg: affine.for %i = lb to min (ub1, ub2),
  // where tripCountExprs yield (tr1, tr2), we create affine.apply's:
  // lb + tr1 - tr1 % ufactor, lb + tr2 - tr2 % ufactor; the results of all
  // these affine.apply's make up the cleanup loop lower bound.
  SmallVector<AffineExpr, 4> bumpExprs(tripCountMap.getNumResults());
  SmallVector<Value, 4> bumpValues(tripCountMap.getNumResults());
  int64_t step = forOp.getStep();
  for (unsigned i = 0, e = tripCountMap.getNumResults(); i < e; i++) {
    auto tripCountExpr = tripCountMap.getResult(i);
    bumpExprs[i] = (tripCountExpr - tripCountExpr % unrollFactor) * step;
    auto bumpMap = AffineMap::get(tripCountMap.getNumDims(), tripCountMap.getNumSymbols(), bumpExprs[i]);
    bumpValues[i] = b.create<AffineApplyOp>(forOp.getLoc(), bumpMap, tripCountOperands);
  }

  SmallVector<AffineExpr, 4> newUbExprs(tripCountMap.getNumResults());
  for (unsigned i = 0, e = bumpExprs.size(); i < e; i++)
    newUbExprs[i] = b.getAffineDimExpr(0) + b.getAffineDimExpr(i + 1);

  cleanupLbOperands.clear();
  cleanupLbOperands.push_back(lb);
  cleanupLbOperands.append(bumpValues.begin(), bumpValues.end());
  cleanupLbMap = AffineMap::get(1 + tripCountMap.getNumResults(), 0, newUbExprs, b.getContext());
  // Simplify the cleanupLbMap + cleanupLbOperands.
  fullyComposeAffineMapAndOperands(&cleanupLbMap, &cleanupLbOperands);
  cleanupLbMap = simplifyAffineMap(cleanupLbMap);
  canonicalizeMapAndOperands(&cleanupLbMap, &cleanupLbOperands);
  // Remove any affine.apply's that became dead from the simplification above.
  for (auto v : bumpValues)
    if (v.use_empty())
      v.getDefiningOp()->erase();

  if (lb.use_empty())
    lb.erase();
}

/// Helper to generate cleanup loop for unroll or unroll-and-jam when the trip
/// count is not a multiple of `unrollFactor`.
static LogicalResult generateCleanupLoopForUnroll(AffineForOp forOp, uint64_t unrollFactor, bool unrollCleanUp) {
  // Insert the cleanup loop right after 'forOp'.
  OpBuilder builder(forOp->getBlock(), std::next(Block::iterator(forOp)));
  auto cleanupForOp = cast<AffineForOp>(builder.clone(*forOp));

  // Update uses of `forOp` results. `cleanupForOp` should use `forOp` result
  // and produce results for the original users of `forOp` results.
  auto results = forOp.getResults();
  auto cleanupResults = cleanupForOp.getResults();
  auto cleanupIterOperands = cleanupForOp.getIterOperands();

  for (auto e : llvm::zip(results, cleanupResults, cleanupIterOperands)) {
    std::get<0>(e).replaceAllUsesWith(std::get<1>(e));
    cleanupForOp->replaceUsesOfWith(std::get<2>(e), std::get<0>(e));
  }

  AffineMap cleanupMap;
  SmallVector<Value, 4> cleanupOperands;
  getCleanupLoopLowerBound(forOp, unrollFactor, cleanupMap, cleanupOperands);
  if (!cleanupMap)
    return failure();

  cleanupForOp.setLowerBound(cleanupOperands, cleanupMap);
  // Adjust upper bound of the original loop; this is the same as the lower
  // bound of the cleanup loop.
  forOp.setUpperBound(cleanupOperands, cleanupMap);

  if (unrollCleanUp && failed(loopUnrollFull(cleanupForOp))) {
    LLVM_DEBUG(llvm::dbgs() << "\n Couldn't fully unroll cleanup loop:" << cleanupForOp);
  }

  if (!unrollCleanUp)
    (void) promoteIfSingleIteration(cleanupForOp);

  return success();
}

/// Generates unrolled copies of AffineForOp 'loopBodyBlock', with associated
/// 'forOpIV' by 'unrollFactor', calling 'ivRemapFn' to remap 'forOpIV' for each
/// unrolled body. If specified, annotates the Ops in each unrolled iteration
/// using annotateFn.
static void generateUnrolledLoop(Block *loopBodyBlock,
                                 Value forOpIV,
                                 uint64_t unrollFactor,
                                 function_ref<Value(unsigned, Value, OpBuilder)> ivRemapFn,
                                 function_ref<void(unsigned, Operation *, OpBuilder)> annotateFn,
                                 ValueRange iterArgs,
                                 ValueRange yieldedValues) {
  // Builder to insert unrolled bodies just before the terminator of the body of
  // 'forOp'.
  auto builder = OpBuilder::atBlockTerminator(loopBodyBlock);

  if (!annotateFn)
    annotateFn = [](unsigned, Operation *, OpBuilder) {};

  // Keep a pointer to the last non-terminator operation in the original block
  // so that we know what to clone (since we are doing this in-place).
  Block::iterator srcBlockEnd = std::prev(loopBodyBlock->end(), 2);

  // Unroll the contents of 'forOp' (append unrollFactor - 1 additional copies).
  SmallVector<Value, 4> lastYielded(yieldedValues);

  for (unsigned i = 1; i < unrollFactor; i++) {
    BlockAndValueMapping operandMap;

    // Prepare operand map.
    operandMap.map(iterArgs, lastYielded);

    // If the induction variable is used, create a remapping to the value for
    // this unrolled instance.
    if (!forOpIV.use_empty()) {
      Value ivUnroll = ivRemapFn(i, forOpIV, builder);
      operandMap.map(forOpIV, ivUnroll);
    }

    // Clone the original body of 'forOp'.
    for (auto it = loopBodyBlock->begin(); it != std::next(srcBlockEnd); it++) {
      Operation *clonedOp = builder.clone(*it, operandMap);
      annotateFn(i, clonedOp, builder);
    }

    // Update yielded values.
    for (unsigned i = 0, e = lastYielded.size(); i < e; i++)
      lastYielded[i] = operandMap.lookup(yieldedValues[i]);
  }

  // Make sure we annotate the Ops in the original body. We do this last so that
  // any annotations are not copied into the cloned Ops above.
  for (auto it = loopBodyBlock->begin(); it != std::next(srcBlockEnd); it++)
    annotateFn(0, &*it, builder);

  // Update operands of the yield statement.
  loopBodyBlock->getTerminator()->setOperands(lastYielded);
}

/// Unrolls this loop by the specified factor. Returns success if the loop
/// is successfully unrolled.
LogicalResult loopUnrollByFactor(AffineForOp forOp,
                                 uint64_t unrollFactor,
                                 function_ref<void(unsigned, Operation *, OpBuilder)> annotateFn,
                                 bool unrollCleanUp) {
  assert(unrollFactor > 0 && "unroll factor should be positive");

  Optional<uint64_t> mayBeConstantTripCount = getConstantTripCount(forOp);
  if (unrollFactor == 1) {
    if (mayBeConstantTripCount && *mayBeConstantTripCount == 1 && failed(promoteIfSingleIteration(forOp)))
      return failure();
    return success();
  }

  // Nothing in the loop body other than the terminator.
  if (llvm::hasSingleElement(forOp.getBody()->getOperations()))
    return success();

  // If the trip count is lower than the unroll factor, no unrolled body.
  if (mayBeConstantTripCount && *mayBeConstantTripCount < unrollFactor) {
    if (unrollCleanUp) {
      // in this case (loop is "smaller" than unroll factor) the loop is essentially
      // a cleanup loop
      return loopUnrollFull(forOp);
    }

    return failure();
  }

  // Generate the cleanup loop if trip count isn't a multiple of unrollFactor.
  auto largestDiv = getLargestDivisorOfTripCount(forOp);
  if (largestDiv % unrollFactor != 0) {
    // Loops where the lower bound is a max expression or the upper bound is
    // a min expression and the trip count doesn't divide the unroll factor
    // can't be unrolled since the lower bound of the cleanup loop in such cases
    // cannot be expressed as an affine function or a max over affine functions.
    if (forOp.getLowerBoundMap().getNumResults() != 1 || forOp.getUpperBoundMap().getNumResults() != 1)
      return failure();
    if (failed(generateCleanupLoopForUnroll(forOp, unrollFactor, unrollCleanUp)))
      assert(false && "cleanup loop lower bound map for single result lower "
                      "and upper bound maps can always be determined");
  }

  ValueRange iterArgs(forOp.getRegionIterArgs());
  auto yieldedValues = forOp.getBody()->getTerminator()->getOperands();

  // Scale the step of loop being unrolled by unroll factor.
  int64_t step = forOp.getStep();
  forOp.setStep(step * unrollFactor);
  generateUnrolledLoop(forOp.getBody(), forOp.getInductionVar(), unrollFactor, [&](unsigned i, Value iv, OpBuilder b) {
    // iv' = iv + i * step
    auto d0 = b.getAffineDimExpr(0);
    auto bumpMap = AffineMap::get(1, 0, d0 + i * step);
    return b.create<AffineApplyOp>(forOp.getLoc(), bumpMap, iv);
  },
      /*annotateFn=*/annotateFn,
      /*iterArgs=*/iterArgs, /*yieldedValues=*/yieldedValues);

  // Promote the loop body up if this has turned into a single iteration loop.
  (void) promoteIfSingleIteration(forOp);
  return success();
}

/// Unrolls this loop by the specified factor or by the trip count (if constant)
/// whichever is lower.
LogicalResult loopUnrollUpToFactor(AffineForOp forOp, uint64_t unrollFactor, bool unrollCleanUp) {
  Optional<uint64_t> mayBeConstantTripCount = getConstantTripCount(forOp);
  auto annotateFn = [](unsigned i, Operation *op, OpBuilder b) {
    op->setAttr("unrolled_iteration", b.getUI32IntegerAttr(i));
  };
  if (mayBeConstantTripCount.has_value() && mayBeConstantTripCount.value() < unrollFactor)
    return loopUnrollByFactor(forOp, mayBeConstantTripCount.value(), annotateFn, unrollCleanUp);
  return loopUnrollByFactor(forOp, unrollFactor, annotateFn, unrollCleanUp);
}

struct NaiveLoopUnroll : public PassWrapper<NaiveLoopUnroll, OperationPass<func::FuncOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(NaiveLoopUnroll)

  NaiveLoopUnroll() = default;
  NaiveLoopUnroll(const NaiveLoopUnroll &) {}
  Option<unsigned> unrollFactor
      {*this, "unroll-factor", ::llvm::cl::desc("Positive number: the factor of unrolling"), ::llvm::cl::init(1)};

  void runOnOperation() override;
  StringRef getArgument() const override { return "bragghls-naive-loop-unroll"; }
  StringRef getDescription() const override {
    return "Naively unroll loops";
  }
};

uint64_t getTotalTripCount(AffineForOp forOp) {
  uint64_t totalTripCount = 1;
  SmallVector<AffineForOp> nestedLoops;
  getPerfectlyNestedLoops(nestedLoops, forOp);
  for (const auto &forOp : nestedLoops) {
    Optional<uint64_t> mayBeConstantTripCount = getConstantTripCount(forOp);
    if (mayBeConstantTripCount)
      totalTripCount *= *mayBeConstantTripCount;
  }
  return totalTripCount;
}

void NaiveLoopUnroll::runOnOperation() {
  auto func = getOperation();
  auto outerLoops = getOperation().getOps<AffineForOp>();
  for (auto root : llvm::make_early_inc_range(outerLoops)) {
    uint64_t currentUnrollFactor = unrollFactor;
    SmallVector<AffineForOp> nestedLoops;
    getPerfectlyNestedLoops(nestedLoops, root);
    for (AffineForOp forOp : llvm::reverse(nestedLoops)) {
      Optional<uint64_t> origMayBeConstantTripCount = getConstantTripCount(forOp);
      if (failed(bragghls::loopUnrollUpToFactor(forOp, currentUnrollFactor, true)))
        return signalPassFailure();

      if (origMayBeConstantTripCount && currentUnrollFactor <= *origMayBeConstantTripCount) {
        break;
      } else if (origMayBeConstantTripCount) {
        currentUnrollFactor -= *origMayBeConstantTripCount;
      }
    }
  }
}

/// Returns true if the provided DependenceResult corresponds to the absence of
/// a dependence.
inline bool noDependence(DependenceResult result) {
  return result.value == DependenceResult::NoDependence;
}

template <typename EffectType, typename T>
bool hasNoInterveningEffect(Operation *start, T memOp) {
  auto isLocallyAllocated = [](Value memref) {
    auto *defOp = memref.getDefiningOp();
    return defOp && hasSingleEffect<MemoryEffects::Allocate>(defOp, memref);
  };

  // A boolean representing whether an intervening operation could have impacted
  // memOp.
  bool hasSideEffect = false;

  // Check whether the effect on memOp can be caused by a given operation op.
  Value memref = memOp.getMemRef();
  std::function<void(Operation *)> checkOperation = [&](Operation *op) {
    // If the effect has alreay been found, early exit,
    if (hasSideEffect)
      return;

    if (auto memEffect = dyn_cast<MemoryEffectOpInterface>(op)) {
      SmallVector<MemoryEffects::EffectInstance, 1> effects;
      memEffect.getEffects(effects);

      bool opMayHaveEffect = false;
      for (auto effect : effects) {
        // If op causes EffectType on a potentially aliasing location for
        // memOp, mark as having the effect.
        if (isa<EffectType>(effect.getEffect())) {
          // TODO: This should be replaced with a check for no aliasing.
          // Aliasing information should be passed to this method.
          if (effect.getValue() && effect.getValue() != memref &&
              isLocallyAllocated(memref) &&
              isLocallyAllocated(effect.getValue()))
            continue;
          opMayHaveEffect = true;
          break;
        }
      }

      if (!opMayHaveEffect)
        return;

      // If the side effect comes from an affine read or write, try to
      // prove the side effecting `op` cannot reach `memOp`.
      if (isa<AffineReadOpInterface, AffineWriteOpInterface>(op)) {
        MemRefAccess srcAccess(op);
        MemRefAccess destAccess(memOp);
        // Affine dependence analysis here is applicable only if both ops
        // operate on the same memref and if `op`, `memOp`, and `start` are in
        // the same AffineScope.
        if (srcAccess.memref == destAccess.memref &&
            getAffineScope(op) == getAffineScope(memOp) &&
            getAffineScope(op) == getAffineScope(start)) {
          // Number of loops containing the start op and the ending operation.
          unsigned minSurroundingLoops =
              getNumCommonSurroundingLoops(*start, *memOp);

          // Number of loops containing the operation `op` which has the
          // potential memory side effect and can occur on a path between
          // `start` and `memOp`.
          unsigned nsLoops = getNumCommonSurroundingLoops(*op, *memOp);

          // For ease, let's consider the case that `op` is a store and we're
          // looking for other potential stores (e.g `op`) that overwrite memory
          // after `start`, and before being read in `memOp`. In this case, we
          // only need to consider other potential stores with depth >
          // minSurrounding loops since `start` would overwrite any store with a
          // smaller number of surrounding loops before.
          unsigned d;
          FlatAffineValueConstraints dependenceConstraints;
          for (d = nsLoops + 1; d > minSurroundingLoops; d--) {
            DependenceResult result = checkMemrefAccessDependence(
                srcAccess, destAccess, d, &dependenceConstraints,
                /*dependenceComponents=*/nullptr);
            // A dependence failure or the presence of a dependence implies a
            // side effect.
            if (!noDependence(result)) {
              hasSideEffect = true;
              return;
            }
          }

          // No side effect was seen, simply return.
          return;
        }
        // TODO: Check here if the memrefs alias: there is no side effect if
        // `srcAccess.memref` and `destAccess.memref` don't alias.
      }
      // We have an op with a memory effect and we cannot prove if it
      // intervenes.
      hasSideEffect = true;
      return;
    }

    if (op->hasTrait<OpTrait::HasRecursiveSideEffects>()) {
      // Recurse into the regions for this op and check whether the internal
      // operations may have the side effect `EffectType` on memOp.
      for (Region &region : op->getRegions())
        for (Block &block : region)
          for (Operation &op : block)
            checkOperation(&op);
      return;
    }

    // Otherwise, conservatively assume generic operations have the effect
    // on the operation
    hasSideEffect = true;
  };

  // Check all paths from ancestor op `parent` to the operation `to` for the
  // effect. It is known that `to` must be contained within `parent`.
  auto until = [&](Operation *parent, Operation *to) {
    // TODO check only the paths from `parent` to `to`.
    // Currently we fallback and check the entire parent op, rather than
    // just the paths from the parent path, stopping after reaching `to`.
    // This is conservatively correct, but could be made more aggressive.
    assert(parent->isAncestor(to));
    checkOperation(parent);
  };

  // Check for all paths from operation `from` to operation `untilOp` for the
  // given memory effect.
  std::function<void(Operation *, Operation *)> recur =
      [&](Operation *from, Operation *untilOp) {
        assert(
            from->getParentRegion()->isAncestor(untilOp->getParentRegion()) &&
                "Checking for side effect between two operations without a common "
                "ancestor");

        // If the operations are in different regions, recursively consider all
        // path from `from` to the parent of `to` and all paths from the parent
        // of `to` to `to`.
        if (from->getParentRegion() != untilOp->getParentRegion()) {
          recur(from, untilOp->getParentOp());
          until(untilOp->getParentOp(), untilOp);
          return;
        }

        // Now, assuming that `from` and `to` exist in the same region, perform
        // a CFG traversal to check all the relevant operations.

        // Additional blocks to consider.
        SmallVector<Block *, 2> todoBlocks;
        {
          // First consider the parent block of `from` an check all operations
          // after `from`.
          for (auto iter = ++from->getIterator(), end = from->getBlock()->end();
               iter != end && &*iter != untilOp; ++iter) {
            checkOperation(&*iter);
          }

          // If the parent of `from` doesn't contain `to`, add the successors
          // to the list of blocks to check.
          if (untilOp->getBlock() != from->getBlock())
            for (Block *succ : from->getBlock()->getSuccessors())
              todoBlocks.push_back(succ);
        }

        SmallPtrSet<Block *, 4> done;
        // Traverse the CFG until hitting `to`.
        while (!todoBlocks.empty()) {
          Block *blk = todoBlocks.pop_back_val();
          if (done.count(blk))
            continue;
          done.insert(blk);
          for (auto &op : *blk) {
            if (&op == untilOp)
              break;
            checkOperation(&op);
            if (&op == blk->getTerminator())
              for (Block *succ : blk->getSuccessors())
                todoBlocks.push_back(succ);
          }
        }
      };
  recur(start, memOp);
  return !hasSideEffect;
}


// This forwards stores to loads for a very specific, particular pattern: store-load pairs on memrefs that accumulate
// accumulates results in the body of a for loop:
//  affine.for %arg3 = 0 to 8 {
//    %3 = affine.load %arg0[%arg1, %arg3] : memref<1x8xi32>
//    %4 = affine.load %1[%arg3, %arg2] : memref<8x8xi32>
//    %5 = affine.load %2[%arg1, %arg2] : memref<1x8xi32>
//    %6 = arith.muli %3, %4 : i32
//    %7 = arith.addi %5, %6 : i32
//    affine.store %7, %2[%arg1, %arg2] : memref<1x8xi32>
//  }
// After unrolling this looks like
//  ...
//  %281 = arith.muli %278, %279 : i32
//  %282 = arith.addi %280, %281 : i32
//  affine.store %282, %1[%arg1, %241] : memref<1x8xi32>
//  %283 = affine.apply #map6(%c0_0)
//  %284 = affine.load %arg0[%arg1, %283] : memref<1x8xi32>
//  %285 = affine.load %0[%283, %241] : memref<8x8xi32>
//  %286 = affine.load %1[%arg1, %241] : memref<1x8xi32>
//  %287 = arith.muli %284, %285 : i32
// where we observe that affine.store %282 can be forwarded to %284 = affine.load.
// Thus, in this method we search for such pairs - a load and its immediately prior store.
static LogicalResult forwardFullyUnrolledStoreToLoad(AffineReadOpInterface loadOp,
                                                     SmallVectorImpl<Operation *> &opsToErase) {
  Operation *prevOp = loadOp->getPrevNode();
  while (prevOp) {
    auto storeOp = dyn_cast<AffineWriteOpInterface>(prevOp);
    if (!storeOp) {
      prevOp = prevOp->getPrevNode();
      continue;
    }

    MemRefAccess srcAccess(storeOp);
    MemRefAccess dstAccess(loadOp);

    if (srcAccess != dstAccess)
      return failure();

    // Since we forward only from the immediately prior store, we verify that there are neither intervening
    // stores nor intervening loads in between.
    if (!hasNoInterveningEffect<MemoryEffects::Write>(storeOp, loadOp))
      return failure();

    // Perform the actual store to load forwarding.
    Value storeVal = cast<AffineWriteOpInterface>(storeOp).getValueToStore();
    // Check if 2 values have the same shape. This is needed for affine
    // vector loads and stores.
    if (storeVal.getType() != loadOp.getValue().getType())
      return failure();
    loadOp.getValue().replaceAllUsesWith(storeVal);
    // Record this to erase later.
    opsToErase.push_back(storeOp);
    // Record this to erase later.
    opsToErase.push_back(loadOp);
    return success();
  }
  return failure();
}

struct NaiveStoreLoadForward : public PassWrapper<NaiveStoreLoadForward, OperationPass<func::FuncOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(NaiveStoreLoadForward)

  NaiveStoreLoadForward() = default;
  NaiveStoreLoadForward(const NaiveStoreLoadForward &) {}

  void runOnOperation() override;
  StringRef getArgument() const override { return "bragghls-naive-store-load-forward"; }
  StringRef getDescription() const override {
    return "Naively forward stores to loads";
  }
};

void NaiveStoreLoadForward::runOnOperation() {
  auto func = getOperation();
  auto outerLoops = getOperation().getOps<AffineForOp>();
  SmallVector<Operation *, 8> opsToErase;

  // Walk all load's and perform store to load forwarding.
  auto body = [&opsToErase](Operation* body) {
    body->walk([&](AffineReadOpInterface loadOp) {
      (void) forwardFullyUnrolledStoreToLoad(loadOp, opsToErase);
    });
    // Erase all load op's whose results were replaced with store fwd'ed ones.
    for (auto *op : opsToErase)
      op->erase();
    opsToErase.clear();
  };

  for (auto forOp : llvm::make_early_inc_range(outerLoops)) {
    body(forOp);
  }
  body(func);
}


inline void registerAllDialects(mlir::DialectRegistry &registry) {
  // clang-format off
  registry.insert<mlir::func::FuncDialect,
                  mlir::linalg::LinalgDialect,
                  mlir::memref::MemRefDialect,
                  mlir::bufferization::BufferizationDialect,
                  mlir::AffineDialect,
                  mlir::math::MathDialect,
                  mlir::arith::ArithmeticDialect,
                  mlir::vector::VectorDialect,
                  mlir::scf::SCFDialect,
                  mlir::LLVM::LLVMDialect,
                  mlir::DLTIDialect>();
  // clang-format on
}

} // anonymous namespace


int main(int argc, char **argv) {
  mlir::DialectRegistry registry;
  bragghls::registerAllDialects(registry);
  PassRegistration<bragghls::NaiveLoopUnroll>();
  PassRegistration<bragghls::NaiveStoreLoadForward>();
  mlir::registerCSEPass();

  return mlir::failed(mlir::MlirOptMain(argc, argv, "BraggHLS Optimization Tool", registry, true));
}
