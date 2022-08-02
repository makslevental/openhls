//===----------------------------------------------------------------------===//
//
// Adapated from ScaleHLS https://github.com/hanchenye/scalehls
//
//===----------------------------------------------------------------------===//

#include "EmitHLSPy.h"
#include "llvm/ADT/APFloat.h"
#include "Utils.h"
#include "Visitor.h"
#include "mlir/IR/AffineExprVisitor.h"
#include "mlir/IR/AsmState.h"
#include "mlir/IR/IntegerSet.h"
#include "mlir/Tools/mlir-translate/Translation.h"
#include "llvm/Support/raw_ostream.h"
#include <iostream>

using namespace mlir;
using namespace bragghls;

//===----------------------------------------------------------------------===//
// Utils
//===----------------------------------------------------------------------===//

static SmallString<16> getTypeName(Value val) {
  // Handle memref, tensor, and vector types.
  auto valType = val.getType();
  if (auto arrayType = val.getType().dyn_cast<ShapedType>())
    valType = arrayType.getElementType();

  // Handle float types.
  if (valType.isa<Float32Type>())
    return SmallString<16>("float");
  else if (valType.isa<Float64Type>())
    return SmallString<16>("double");

  // Handle integer types.
  else if (valType.isa<IndexType>())
    return SmallString<16>("int");
  else if (auto intType = valType.dyn_cast<IntegerType>()) {
    if (intType.getWidth() == 1)
      return SmallString<16>("bool");
    else {
      std::string signedness = "";
      if (intType.getSignedness() == IntegerType::SignednessSemantics::Unsigned)
        signedness = "u";

      switch (intType.getWidth()) {
      case 8:
      case 16:
      case 32:
      case 64:
        return SmallString<16>(signedness + "int" +
                               std::to_string(intType.getWidth()) + "_t");
      default:
        return SmallString<16>("ap_" + signedness + "int<" +
                               std::to_string(intType.getWidth()) + ">");
      }
    }
  } else
    val.getDefiningOp()->emitError("has unsupported type.");

  return SmallString<16>();
}

//===----------------------------------------------------------------------===//
// Some Base Classes
//===----------------------------------------------------------------------===//

namespace {
/// This class maintains the mutable state that cross-cuts and is shared by the
/// various emitters.
class BraggHLSEmitterState {
public:
  explicit BraggHLSEmitterState(raw_ostream &os) : os(os) {}

  // The stream to emit to.
  raw_ostream &os;

  bool encounteredError = false;
  unsigned currentIndent = 0;

  // This table contains all declared values.
  DenseMap<Value, SmallString<8>> nameTable;

private:
  BraggHLSEmitterState(const BraggHLSEmitterState &) = delete;
  void operator=(const BraggHLSEmitterState &) = delete;
};
} // namespace

namespace {
/// This is the base class for all of the HLSPy Emitter components.
class BraggHLSEmitterBase {
public:
  explicit BraggHLSEmitterBase(BraggHLSEmitterState &state)
      : state(state), os(state.os) {}

  InFlightDiagnostic emitError(Operation *op, const Twine &message) {
    state.encounteredError = true;
    return op->emitError(message);
  }

  raw_ostream &indent() { return os.indent(state.currentIndent); }

  void addIndent() { state.currentIndent += 2; }
  void reduceIndent() { state.currentIndent -= 2; }

  // All of the mutable state we are maintaining.
  BraggHLSEmitterState &state;

  // The stream to emit to.
  raw_ostream &os;

  /// Value name management methods.
  SmallString<8> addName(Value val, bool isPtr = false);
  void removeName(Value val);

  SmallString<8> addAlias(Value val, Value alias);

  SmallString<8> getName(Value val);

  bool isDeclared(Value val) {
    if (getName(val).empty()) {
      return false;
    } else
      return true;
  }

private:
  BraggHLSEmitterBase(const BraggHLSEmitterBase &) = delete;
  void operator=(const BraggHLSEmitterBase &) = delete;
};
} // namespace

// TODO: update naming rule.
SmallString<8> BraggHLSEmitterBase::addName(Value val, bool isPtr) {
  assert(!isDeclared(val) && "has been declared before.");

  SmallString<8> valName;
  std::string s;
  llvm::raw_string_ostream rs{s};

  AsmState asmState(val.getParentRegion()->getParentOfType<FuncOp>());
  val.printAsOperand(rs, asmState);
  std::replace(s.begin(), s.end(), '%', '_');
  valName = llvm::StringRef(s);
  state.nameTable[val] = valName;

  return valName;
}

SmallString<8> BraggHLSEmitterBase::addAlias(Value val, Value alias) {
  assert(!isDeclared(alias) && "has been declared before.");
  assert(isDeclared(val) && "hasn't been declared before.");

  auto valName = getName(val);
  state.nameTable[alias] = valName;

  return valName;
}

void BraggHLSEmitterBase::removeName(Value val) {
  assert(isDeclared(val) && "has not been declared before.");
  val.dump();
  state.nameTable.erase(val);
}

SmallString<8> BraggHLSEmitterBase::getName(Value val) {
  // For constant scalar operations, the constant number will be returned rather
  // than the value name.
//  if (val.getType().dyn_cast<ShapedType>()) {
//    return {"arr_" + state.nameTable.lookup(val).str().str()};
//  }
  if (auto defOp = val.getDefiningOp()) {
    if (auto constOp = dyn_cast<arith::ConstantOp>(defOp)) {
      auto constAttr = constOp.getValue();

      if (auto floatAttr = constAttr.dyn_cast<FloatAttr>()) {
        auto value = floatAttr.getValueAsDouble();
        if (std::isfinite(value))
          return SmallString<8>(std::to_string(value));
        else if (value > 0)
          return SmallString<8>("INFINITY");
        else
          return SmallString<8>("-INFINITY");

      } else if (auto intAttr = constAttr.dyn_cast<IntegerAttr>()) {
        auto value = intAttr.getInt();
        return SmallString<8>(std::to_string(value));

      } else if (auto boolAttr = constAttr.dyn_cast<BoolAttr>())
        return SmallString<8>(std::to_string(boolAttr.getValue()));
    }
  }
  return state.nameTable.lookup(val);
}

//===----------------------------------------------------------------------===//
// ModuleEmitter Class Declaration
//===----------------------------------------------------------------------===//

namespace {
class ModuleEmitter : public BraggHLSEmitterBase {
public:
  using operand_range = Operation::operand_range;
  explicit ModuleEmitter(BraggHLSEmitterState &state)
      : BraggHLSEmitterBase(state) {}

  /// SCF statement emitters.
  void emitScfFor(scf::ForOp op);
  void emitScfIf(scf::IfOp op);
  void emitScfYield(scf::YieldOp op);

  /// Affine statement emitters.
  void emitAffineFor(AffineForOp op);
  void emitAffineIf(AffineIfOp op);
  void emitAffineParallel(AffineParallelOp op);
  void emitAffineApply(AffineApplyOp op);
  template <typename OpType>
  void emitAffineMaxMin(OpType op, const char *syntax);
  void emitAffineLoad(AffineLoadOp op);
  void emitAffineStore(AffineStoreOp op);
  void emitAffineYield(AffineYieldOp op);

  /// Vector-related statement emitters.
  void emitTransferRead(vector::TransferReadOp op);
  void emitTransferWrite(vector::TransferWriteOp op);
  void emitBroadcast(vector::BroadcastOp);

  /// Memref-related statement emitters.
  template <typename OpType> void emitAlloc(OpType op);
  void emitLoad(memref::LoadOp op);
  void emitStore(memref::StoreOp op);
  void emitMemCpy(memref::CopyOp op);
  void emitGlobal(memref::GlobalOp op);
  void emitGetGlobal(memref::GetGlobalOp op);
  void emitTensorStore(memref::TensorStoreOp op);
  template <typename OpType> void emitReshape(OpType op);
  void emitTensorToMemref(bufferization::ToMemrefOp op);
  void emitMemrefToTensor(bufferization::ToTensorOp op);

  /// HLS dialect operation emitters.
  //  void emitStreamChannel(StreamChannelOp op);
  //  void emitStreamRead(StreamReadOp op);
  //  void emitStreamWrite(StreamWriteOp op);
  //  void emitPrimMul(PrimMulOp op);
  template <typename AssignOpType> void emitAssign(AssignOpType op);
  int apply_counter = 0;

  /// Control flow operation emitters.
  void emitCall(func::CallOp op);

  /// Standard expression emitters.
  void emitUnary(Operation *op, const char *syntax);
  void emitBinary(Operation *op, const char *syntax);
  template <typename OpType> void emitMaxMin(OpType op, const char *syntax);

  /// Special expression emitters.
  void emitSelect(arith::SelectOp op);
  void emitConstant(arith::ConstantOp op);

  /// Top-level MLIR module emitter.
  void emitModule(ModuleOp module);

private:
  /// Helper to get the string indices of TransferRead/Write operations.
  template <typename TransferOpType>
  SmallVector<SmallString<8>, 4> getTransferIndices(TransferOpType op);

  /// C++ component emitters.
  void emitValue(Value val, unsigned rank = 0, bool isPtr = false,
                 bool isRef = false);
  void emitArrayDecl(Value array, bool input = false, bool output = false);
  unsigned emitNestedLoopHeader(Value val);
  void emitNestedLoopFooter(unsigned rank);
  void emitInfoAndNewLine(Operation *op);

  /// MLIR component and HLS C++ pragma emitters.
  void emitBlock(Block &block);
  void emitFunction(FuncOp func);
};
} // namespace

//===----------------------------------------------------------------------===//
// AffineEmitter Class
//===----------------------------------------------------------------------===//

namespace {
class AffineExprEmitter : public BraggHLSEmitterBase,
                          public AffineExprVisitor<AffineExprEmitter> {
public:
  using operand_range = Operation::operand_range;
  explicit AffineExprEmitter(BraggHLSEmitterState &state, unsigned numDim,
                             operand_range operands)
      : BraggHLSEmitterBase(state), numDim(numDim), operands(operands) {}

  void visitAddExpr(AffineBinaryOpExpr expr) { emitAffineBinary(expr, "+"); }
  void visitMulExpr(AffineBinaryOpExpr expr) { emitAffineBinary(expr, "*"); }
  void visitModExpr(AffineBinaryOpExpr expr) { emitAffineBinary(expr, "%"); }
  void visitFloorDivExpr(AffineBinaryOpExpr expr) {
    emitAffineBinary(expr, "//");
  }
  void visitCeilDivExpr(AffineBinaryOpExpr expr) {
    // This is super inefficient.
    os << "(";
    visit(expr.getLHS());
    os << " + ";
    visit(expr.getRHS());
    os << " - 1) // ";
    visit(expr.getRHS());
    os << ")";
  }

  void visitConstantExpr(AffineConstantExpr expr) { os << expr.getValue(); }

  void visitDimExpr(AffineDimExpr expr) {
    os << getName(operands[expr.getPosition()]);
  }
  void visitSymbolExpr(AffineSymbolExpr expr) {
    os << getName(operands[numDim + expr.getPosition()]);
  }

  /// Affine expression emitters.
  void emitAffineBinary(AffineBinaryOpExpr expr, const char *syntax) {
    os << "(";
    if (auto constRHS = expr.getRHS().dyn_cast<AffineConstantExpr>()) {
      if ((unsigned)*syntax == (unsigned)*"*" && constRHS.getValue() == -1) {
        os << "-";
        visit(expr.getLHS());
        os << ")";
        return;
      }
      if ((unsigned)*syntax == (unsigned)*"+" && constRHS.getValue() < 0) {
        visit(expr.getLHS());
        os << " - ";
        os << -constRHS.getValue();
        os << ")";
        return;
      }
    }
    if (auto binaryRHS = expr.getRHS().dyn_cast<AffineBinaryOpExpr>()) {
      if (auto constRHS = binaryRHS.getRHS().dyn_cast<AffineConstantExpr>()) {
        if ((unsigned)*syntax == (unsigned)*"+" && constRHS.getValue() == -1 &&
            binaryRHS.getKind() == AffineExprKind::Mul) {
          visit(expr.getLHS());
          os << " - ";
          visit(binaryRHS.getLHS());
          os << ")";
          return;
        }
      }
    }
    visit(expr.getLHS());
    os << " " << syntax << " ";
    visit(expr.getRHS());
    os << ")";
  }

  void emitAffineExpr(AffineExpr expr) { visit(expr); }

private:
  unsigned numDim;
  operand_range operands;
};
} // namespace

//===----------------------------------------------------------------------===//
// StmtVisitor, ExprVisitor, and PragmaVisitor Classes
//===----------------------------------------------------------------------===//

namespace {
class StmtVisitor : public HLSVisitorBase<StmtVisitor, bool> {
public:
  StmtVisitor(ModuleEmitter &emitter) : emitter(emitter) {}

  using HLSVisitorBase::visitOp;
  /// SCF statements.
  bool visitOp(scf::ForOp op) { return emitter.emitScfFor(op), true; };
  bool visitOp(scf::IfOp op) { return emitter.emitScfIf(op), true; };
  bool visitOp(scf::ParallelOp op) { return false; };
  bool visitOp(scf::ReduceOp op) { return false; };
  bool visitOp(scf::ReduceReturnOp op) { return false; };
  bool visitOp(scf::YieldOp op) { return emitter.emitScfYield(op), true; };

  /// Affine statements.
  bool visitOp(AffineForOp op) { return emitter.emitAffineFor(op), true; }
  bool visitOp(AffineIfOp op) { return emitter.emitAffineIf(op), true; }
  bool visitOp(AffineParallelOp op) {
    return emitter.emitAffineParallel(op), true;
  }
  bool visitOp(AffineApplyOp op) { return emitter.emitAffineApply(op), true; }
  bool visitOp(AffineMaxOp op) {
    return emitter.emitAffineMaxMin(op, "max"), true;
  }
  bool visitOp(AffineMinOp op) {
    return emitter.emitAffineMaxMin(op, "min"), true;
  }
  bool visitOp(AffineLoadOp op) { return emitter.emitAffineLoad(op), true; }
  bool visitOp(AffineStoreOp op) { return emitter.emitAffineStore(op), true; }
  bool visitOp(AffineVectorLoadOp op) { return false; }
  bool visitOp(AffineVectorStoreOp op) { return false; }
  bool visitOp(AffineYieldOp op) { return emitter.emitAffineYield(op), true; }

  /// Vector-related statements.
  bool visitOp(vector::TransferReadOp op) {
    return emitter.emitTransferRead(op), true;
  };
  bool visitOp(vector::TransferWriteOp op) {
    return emitter.emitTransferWrite(op), true;
  };
  bool visitOp(vector::BroadcastOp op) {
    return emitter.emitBroadcast(op), true;
  };

  /// Memref-related statements.
  bool visitOp(memref::AllocOp op) { return emitter.emitAlloc(op), true; }
  bool visitOp(memref::AllocaOp op) { return emitter.emitAlloc(op), true; }
  bool visitOp(memref::LoadOp op) { return emitter.emitLoad(op), true; }
  bool visitOp(memref::StoreOp op) { return emitter.emitStore(op), true; }
  bool visitOp(memref::DeallocOp op) { return true; }
  bool visitOp(memref::CopyOp op) { return emitter.emitMemCpy(op), true; }
  bool visitOp(memref::GlobalOp op) { return emitter.emitGlobal(op), true; }
  bool visitOp(memref::GetGlobalOp op) {
    return emitter.emitGetGlobal(op), true;
  }
  bool visitOp(memref::TensorStoreOp op) {
    return emitter.emitTensorStore(op), true;
  }
  bool visitOp(tensor::ReshapeOp op) { return emitter.emitReshape(op), true; }
  bool visitOp(memref::ReshapeOp op) { return emitter.emitReshape(op), true; }
  bool visitOp(memref::CollapseShapeOp op) {
    return emitter.emitReshape(op), true;
  }
  bool visitOp(memref::ExpandShapeOp op) {
    return emitter.emitReshape(op), true;
  }
  bool visitOp(memref::ReinterpretCastOp op) {
    return emitter.emitReshape(op), true;
  }
  bool visitOp(bufferization::ToMemrefOp op) {
    return emitter.emitTensorToMemref(op), true;
  }
  bool visitOp(bufferization::ToTensorOp op) {
    return emitter.emitMemrefToTensor(op), true;
  }

  /// Control flow operations.
  bool visitOp(func::CallOp op) { return emitter.emitCall(op), true; }
  bool visitOp(func::ReturnOp op) { return true; }

private:
  ModuleEmitter &emitter;
};
} // namespace

namespace {
class ExprVisitor : public HLSVisitorBase<ExprVisitor, bool> {
public:
  ExprVisitor(ModuleEmitter &emitter) : emitter(emitter) {}
  using HLSVisitorBase::visitOp;

  /// Unary expressions.
  bool visitOp(math::AbsOp op) { return emitter.emitUnary(op, "Abs"), true; }
  bool visitOp(math::CeilOp op) { return emitter.emitUnary(op, "Ceil"), true; }
  bool visitOp(math::CosOp op) { return emitter.emitUnary(op, "Cos"), true; }
  bool visitOp(math::SinOp op) { return emitter.emitUnary(op, "Sin"), true; }
  bool visitOp(math::TanhOp op) { return emitter.emitUnary(op, "Tanh"), true; }
  bool visitOp(math::SqrtOp op) { return emitter.emitUnary(op, "Sqrt"), true; }
  bool visitOp(math::RsqrtOp op) {
    return emitter.emitUnary(op, "1.0 / sqrt"), true;
  }
  bool visitOp(math::ExpOp op) { return emitter.emitUnary(op, "Exp"), true; }
  bool visitOp(math::Exp2Op op) { return emitter.emitUnary(op, "Exp2"), true; }
  bool visitOp(math::LogOp op) { return emitter.emitUnary(op, "Log"), true; }
  bool visitOp(math::Log2Op op) { return emitter.emitUnary(op, "Log2"), true; }
  bool visitOp(math::Log10Op op) {
    return emitter.emitUnary(op, "log10"), true;
  }
  bool visitOp(arith::NegFOp op) { return emitter.emitUnary(op, "-"), true; }

  /// Float binary expressions.
  bool visitOp(arith::CmpFOp op);
  bool visitOp(arith::AddFOp op) { return emitter.emitBinary(op, "+"), true; }
  bool visitOp(arith::SubFOp op) { return emitter.emitBinary(op, "-"), true; }
  bool visitOp(arith::MulFOp op) { return emitter.emitBinary(op, "*"), true; }
  bool visitOp(arith::DivFOp op) { return emitter.emitBinary(op, "/"), true; }
  bool visitOp(arith::RemFOp op) { return emitter.emitBinary(op, "%"), true; }
  bool visitOp(arith::MaxFOp op) { return emitter.emitMaxMin(op, "max"), true; }
  bool visitOp(arith::MinFOp op) { return emitter.emitMaxMin(op, "min"), true; }

  /// Integer binary expressions.
  bool visitOp(arith::CmpIOp op);
  bool visitOp(arith::AddIOp op) { return emitter.emitBinary(op, "+"), true; }
  bool visitOp(arith::SubIOp op) { return emitter.emitBinary(op, "-"), true; }
  bool visitOp(arith::MulIOp op) { return emitter.emitBinary(op, "*"), true; }
  bool visitOp(arith::DivSIOp op) { return emitter.emitBinary(op, "/"), true; }
  bool visitOp(arith::RemSIOp op) { return emitter.emitBinary(op, "%"), true; }
  bool visitOp(arith::DivUIOp op) { return emitter.emitBinary(op, "/"), true; }
  bool visitOp(arith::RemUIOp op) { return emitter.emitBinary(op, "%"), true; }
  bool visitOp(arith::XOrIOp op) { return emitter.emitBinary(op, "^"), true; }
  bool visitOp(arith::AndIOp op) { return emitter.emitBinary(op, "&"), true; }
  bool visitOp(arith::OrIOp op) { return emitter.emitBinary(op, "|"), true; }
  bool visitOp(arith::ShLIOp op) { return emitter.emitBinary(op, "<<"), true; }
  bool visitOp(arith::ShRSIOp op) { return emitter.emitBinary(op, ">>"), true; }
  bool visitOp(arith::ShRUIOp op) { return emitter.emitBinary(op, ">>"), true; }
  bool visitOp(arith::MaxSIOp op) {
    return emitter.emitMaxMin(op, "max"), true;
  }
  bool visitOp(arith::MinSIOp op) {
    return emitter.emitMaxMin(op, "min"), true;
  }
  bool visitOp(arith::MaxUIOp op) {
    return emitter.emitMaxMin(op, "max"), true;
  }
  bool visitOp(arith::MinUIOp op) {
    return emitter.emitMaxMin(op, "min"), true;
  }

  /// Special expressions.
  bool visitOp(arith::SelectOp op) { return emitter.emitSelect(op), true; }
  bool visitOp(arith::ConstantOp op) { return emitter.emitConstant(op), true; }
  bool visitOp(arith::IndexCastOp op) { return emitter.emitAssign(op), true; }
  bool visitOp(arith::UIToFPOp op) { return emitter.emitAssign(op), true; }
  bool visitOp(arith::SIToFPOp op) { return emitter.emitAssign(op), true; }
  bool visitOp(arith::FPToUIOp op) { return emitter.emitAssign(op), true; }
  bool visitOp(arith::FPToSIOp op) { return emitter.emitAssign(op), true; }

  /// TODO: Figure out whether these ops need to be separately handled.
  bool visitOp(arith::TruncIOp op) { return emitter.emitAssign(op), true; }
  bool visitOp(arith::TruncFOp op) { return emitter.emitAssign(op), true; }
  bool visitOp(arith::ExtUIOp op) { return emitter.emitAssign(op), true; }
  bool visitOp(arith::ExtSIOp op) { return emitter.emitAssign(op), true; }

private:
  ModuleEmitter &emitter;
};
} // namespace

bool ExprVisitor::visitOp(arith::CmpFOp op) {
  switch (op.getPredicate()) {
  case arith::CmpFPredicate::OEQ:
  case arith::CmpFPredicate::UEQ:
    return emitter.emitBinary(op, "=="), true;
  case arith::CmpFPredicate::ONE:
  case arith::CmpFPredicate::UNE:
    return emitter.emitBinary(op, "!="), true;
  case arith::CmpFPredicate::OLT:
  case arith::CmpFPredicate::ULT:
    return emitter.emitBinary(op, "<"), true;
  case arith::CmpFPredicate::OLE:
  case arith::CmpFPredicate::ULE:
    return emitter.emitBinary(op, "<="), true;
  case arith::CmpFPredicate::OGT:
  case arith::CmpFPredicate::UGT:
    return emitter.emitBinary(op, ">"), true;
  case arith::CmpFPredicate::OGE:
  case arith::CmpFPredicate::UGE:
    return emitter.emitBinary(op, ">="), true;
  default:
    op.emitError("has unsupported compare type.");
    return false;
  }
}

bool ExprVisitor::visitOp(arith::CmpIOp op) {
  switch (op.getPredicate()) {
  case arith::CmpIPredicate::eq:
    return emitter.emitBinary(op, "=="), true;
  case arith::CmpIPredicate::ne:
    return emitter.emitBinary(op, "!="), true;
  case arith::CmpIPredicate::slt:
  case arith::CmpIPredicate::ult:
    return emitter.emitBinary(op, "<"), true;
  case arith::CmpIPredicate::sle:
  case arith::CmpIPredicate::ule:
    return emitter.emitBinary(op, "<="), true;
  case arith::CmpIPredicate::sgt:
  case arith::CmpIPredicate::ugt:
    return emitter.emitBinary(op, ">"), true;
  case arith::CmpIPredicate::sge:
  case arith::CmpIPredicate::uge:
    return emitter.emitBinary(op, ">="), true;
  }
}

//===----------------------------------------------------------------------===//
// ModuleEmitter Class Definition
//===----------------------------------------------------------------------===//

/// SCF statement emitters.
void ModuleEmitter::emitScfFor(scf::ForOp op) {
  indent() << "for ";
  auto iterVar = op.getInductionVar();

  std::string s;
  llvm::raw_string_ostream rs{s};
  AsmState asmState(op->getParentOfType<FuncOp>());
  iterVar.printAsOperand(rs, asmState);
  std::replace(s.begin(), s.end(), '%', '_');

  state.nameTable[iterVar] = s;
  os << s;
  //  emitValue(iterVar);
  os << " in range(";
  emitValue(op.getLowerBound());
  os << ", ";
  emitValue(op.getUpperBound());
  os << ", ";
  emitValue(op.getStep());
  os << "):";
  os << "\n";

  addIndent();

  emitBlock(*op.getBody());
  state.nameTable.erase(iterVar);
  reduceIndent();

  indent() << "\n";
}

void ModuleEmitter::emitScfIf(scf::IfOp op) {
  // Declare all values returned by scf::YieldOp. They will be further handled
  // by the scf::YieldOp emitter.
  for (auto result : op.getResults()) {
    if (!isDeclared(result)) {
      indent();
      if (result.getType().isa<ShapedType>())
        emitArrayDecl(result);
      else
        emitValue(result);
      os << "\n";
    }
  }

  indent() << "if (";
  emitValue(op.getCondition());
  os << "):";
  os << "\n";

  addIndent();
  emitBlock(op.getThenRegion().front());
  reduceIndent();

  if (!op.getElseRegion().empty()) {
    indent() << "else:\n";
    addIndent();
    emitBlock(op.getElseRegion().front());
    reduceIndent();
  }

  indent() << "\n";
}

void ModuleEmitter::emitScfYield(scf::YieldOp op) {
  if (op.getNumOperands() == 0)
    return;

  // For now, only and scf::If operations will use scf::Yield to return
  // generated values.
  if (auto parentOp = dyn_cast<scf::IfOp>(op->getParentOp())) {
    unsigned resultIdx = 0;
    for (auto result : parentOp.getResults()) {
      unsigned rank = emitNestedLoopHeader(result);
      indent();
      emitValue(result, rank);
      os << " = ";
      emitValue(op.getOperand(resultIdx++), rank);
      os << "\n";
      emitNestedLoopFooter(rank);
    }
  }
}

/// Affine statement emitters.
void ModuleEmitter::emitAffineFor(AffineForOp op) {
  indent() << "for ";
  auto iterVar = op.getInductionVar();

  // Emit lower bound.
  emitValue(iterVar);
  os << " in range(";
  auto lowerMap = op.getLowerBoundMap();
  AffineExprEmitter lowerEmitter(state, lowerMap.getNumDims(),
                                 op.getLowerBoundOperands());
  if (lowerMap.getNumResults() == 1)
    lowerEmitter.emitAffineExpr(lowerMap.getResult(0));
  else {
    for (unsigned i = 0, e = lowerMap.getNumResults() - 1; i < e; ++i)
      os << "max(";
    lowerEmitter.emitAffineExpr(lowerMap.getResult(0));
    for (auto &expr : llvm::drop_begin(lowerMap.getResults(), 1)) {
      os << ", ";
      lowerEmitter.emitAffineExpr(expr);
      os << ")";
    }
  }
  os << ", ";

  // Emit upper bound.
  auto upperMap = op.getUpperBoundMap();
  AffineExprEmitter upperEmitter(state, upperMap.getNumDims(),
                                 op.getUpperBoundOperands());
  if (upperMap.getNumResults() == 1)
    upperEmitter.emitAffineExpr(upperMap.getResult(0));
  else {
    for (unsigned i = 0, e = upperMap.getNumResults() - 1; i < e; ++i)
      os << "min(";
    upperEmitter.emitAffineExpr(upperMap.getResult(0));
    for (auto &expr : llvm::drop_begin(upperMap.getResults(), 1)) {
      os << ", ";
      upperEmitter.emitAffineExpr(expr);
      os << ")";
    }
  }
  os << ", " << op.getStep() << "):";
  os << "\n";

  addIndent();

  emitBlock(*op.getBody());
  reduceIndent();

  indent() << "\n";
}

void ModuleEmitter::emitAffineIf(AffineIfOp op) {
  // Declare all values returned by AffineYieldOp. They will be further
  // handled by the AffineYieldOp emitter.
  for (auto result : op.getResults()) {
    if (!isDeclared(result)) {
      indent();
      if (result.getType().isa<ShapedType>())
        emitArrayDecl(result);
      else
        emitValue(result);
      os << "\n";
    }
  }

  indent() << "if (";
  auto constrSet = op.getIntegerSet();
  AffineExprEmitter constrEmitter(state, constrSet.getNumDims(),
                                  op.getOperands());

  // Emit all constraints.
  unsigned constrIdx = 0;
  for (auto &expr : constrSet.getConstraints()) {
    constrEmitter.emitAffineExpr(expr);
    if (constrSet.isEq(constrIdx))
      os << " == 0";
    else
      os << " >= 0";

    if (constrIdx++ != constrSet.getNumConstraints() - 1)
      os << " and ";
  }
  os << "):";
  os << "\n";

  addIndent();
  emitBlock(*op.getThenBlock());
  reduceIndent();

  if (op.hasElse()) {
    indent() << "else:\n";
    addIndent();
    emitBlock(*op.getElseBlock());
    reduceIndent();
  }

  indent() << "\n";
}

void ModuleEmitter::emitAffineParallel(AffineParallelOp op) {
  // Declare all values returned by AffineParallelOp. They will be further
  // handled by the AffineYieldOp emitter.
  for (auto result : op.getResults()) {
    if (!isDeclared(result)) {
      indent();
      if (result.getType().isa<ShapedType>())
        emitArrayDecl(result);
      else
        emitValue(result);
      os << "\n";
    }
  }

  os << "\n";
  indent() << "@parfor(ranges=(";
  auto steps = getIntArrayAttrValue(op, op.getStepsAttrName());
  for (unsigned i = 0, e = op.getNumDims(); i < e; ++i) {
    os << "range(";
    auto lowerMap = op.getLowerBoundsValueMap().getAffineMap();
    AffineExprEmitter lowerEmitter(state, lowerMap.getNumDims(),
                                   op.getLowerBoundsOperands());
    lowerEmitter.emitAffineExpr(lowerMap.getResult(i));
    os << ", ";

    auto upperMap = op.getUpperBoundsValueMap().getAffineMap();
    AffineExprEmitter upperEmitter(state, upperMap.getNumDims(),
                                   op.getUpperBoundsOperands());
    upperEmitter.emitAffineExpr(upperMap.getResult(i));
    os << ", ";

    os << steps[i] << ")";
    if (i < op.getNumDims()-1)
      os << ", ";
  }
  indent() << ",))\n";
  indent() << "def body(";
  for (unsigned i = 0, e = op.getNumDims(); i < e; ++i) {
    auto iterVar = op.getBody()->getArgument(i);
    emitValue(iterVar);
    if (i < op.getNumDims()-1)
      os << ", ";
  }
  os << "):";
  os << "\n";
  addIndent();
  emitBlock(*op.getBody());
  reduceIndent();
  os << "\n";
}

void ModuleEmitter::emitAffineApply(AffineApplyOp op) {
  indent();
  emitValue(op.getResult());
  os << " = ";
  auto affineMap = op.getAffineMap();
  AffineExprEmitter(state, affineMap.getNumDims(), op.getOperands())
      .emitAffineExpr(affineMap.getResult(0));
  os << "\n";
}

template <typename OpType>
void ModuleEmitter::emitAffineMaxMin(OpType op, const char *syntax) {
  indent();
  emitValue(op.getResult());
  os << " = ";
  auto affineMap = op.getAffineMap();
  AffineExprEmitter affineEmitter(state, affineMap.getNumDims(),
                                  op.getOperands());
  for (unsigned i = 0, e = affineMap.getNumResults() - 1; i < e; ++i)
    os << syntax << "(";
  affineEmitter.emitAffineExpr(affineMap.getResult(0));
  for (auto &expr : llvm::drop_begin(affineMap.getResults(), 1)) {
    os << ", ";
    affineEmitter.emitAffineExpr(expr);
    os << ")";
  }
  os << "\n";
}

void ModuleEmitter::emitAffineLoad(AffineLoadOp op) {
  indent();
  emitValue(op.getResult());
  os << " = ";
  emitValue(op.getMemRef());
  auto affineMap = op.getAffineMap();
  AffineExprEmitter affineEmitter(state, affineMap.getNumDims(),
                                  op.getMapOperands());
  os << "[";
  for (auto index : affineMap.getResults()) {
    affineEmitter.emitAffineExpr(index);
  }
  os << "]\n";
}

void ModuleEmitter::emitAffineStore(AffineStoreOp op) {
  indent();
  emitValue(op.getMemRef());
  auto affineMap = op.getAffineMap();
  AffineExprEmitter affineEmitter(state, affineMap.getNumDims(),
                                  op.getMapOperands());
  os << "[";
  for (auto index : affineMap.getResults()) {
    affineEmitter.emitAffineExpr(index);
    os << ",";
  }
  os << "]";
  os << " = ";
  emitValue(op.getValueToStore());
}

// TODO: For now, all values created in the AffineIf region will be declared
// in the generated C++. However, values which will be returned by affine
// yield operation should not be declared again. How to "bind" the pair of
// values inside/outside of AffineIf region needs to be considered.
void ModuleEmitter::emitAffineYield(AffineYieldOp op) {
  if (op.getNumOperands() == 0)
    return;

  // For now, only AffineParallel and AffineIf operations will use
  // AffineYield to return generated values.
  if (auto parentOp = dyn_cast<AffineIfOp>(op->getParentOp())) {
    unsigned resultIdx = 0;
    for (auto result : parentOp.getResults()) {
      unsigned rank = emitNestedLoopHeader(result);
      indent();
      emitValue(result, rank);
      os << " = ";
      emitValue(op.getOperand(resultIdx++), rank);
      //      os << "\n";
      emitNestedLoopFooter(rank);
    }
  } else if (auto parentOp = dyn_cast<AffineParallelOp>(op->getParentOp())) {
    indent() << "if (";
    unsigned ivIdx = 0;
    for (auto iv : parentOp.getBody()->getArguments()) {
      emitValue(iv);
      os << " == 0";
      if (ivIdx++ != parentOp.getBody()->getNumArguments() - 1)
        os << " and ";
    }
    os << "):\n";

    // When all induction values are 0, generated values will be directly
    // assigned to the current results, correspondingly.
    addIndent();
    unsigned resultIdx = 0;
    for (auto result : parentOp.getResults()) {
      unsigned rank = emitNestedLoopHeader(result);
      indent();
      emitValue(result, rank);
      os << " = ";
      emitValue(op.getOperand(resultIdx++), rank);
      os << "\n";
      emitNestedLoopFooter(rank);
    }
    reduceIndent();

    indent() << "else:\n";

    // Otherwise, generated values will be accumulated/reduced to the
    // current results with corresponding arith::AtomicRMWKind operations.
    addIndent();
    auto RMWAttrs =
        getIntArrayAttrValue(parentOp, parentOp.getReductionsAttrName());
    resultIdx = 0;
    for (auto result : parentOp.getResults()) {
      unsigned rank = emitNestedLoopHeader(result);
      indent();
      emitValue(result, rank);
      switch ((arith::AtomicRMWKind)RMWAttrs[resultIdx]) {
      case (arith::AtomicRMWKind::addf):
      case (arith::AtomicRMWKind::addi):
        os << " += ";
        emitValue(op.getOperand(resultIdx++), rank);
        break;
      case (arith::AtomicRMWKind::assign):
        os << " = ";
        emitValue(op.getOperand(resultIdx++), rank);
        break;
      case (arith::AtomicRMWKind::maxf):
      case (arith::AtomicRMWKind::maxs):
      case (arith::AtomicRMWKind::maxu):
        os << " = max(";
        emitValue(result, rank);
        os << ", ";
        emitValue(op.getOperand(resultIdx++), rank);
        os << ")";
        break;
      case (arith::AtomicRMWKind::minf):
      case (arith::AtomicRMWKind::mins):
      case (arith::AtomicRMWKind::minu):
        os << " = min(";
        emitValue(result, rank);
        os << ", ";
        emitValue(op.getOperand(resultIdx++), rank);
        os << ")";
        break;
      case (arith::AtomicRMWKind::mulf):
      case (arith::AtomicRMWKind::muli):
        os << " *= ";
        emitValue(op.getOperand(resultIdx++), rank);
        break;
      case (arith::AtomicRMWKind::ori):
        os << " |= ";
        emitValue(op.getOperand(resultIdx++), rank);
        break;
      case (arith::AtomicRMWKind::andi):
        os << " &= ";
        emitValue(op.getOperand(resultIdx++), rank);
        break;
      }
      os << "\n";
      emitNestedLoopFooter(rank);
    }
    reduceIndent();

    indent() << "\n";
  }
}

/// Helper to get the string indices of TransferRead/Write operations.
template <typename TransferOpType>
SmallVector<SmallString<8>, 4>
ModuleEmitter::getTransferIndices(TransferOpType op) {
  // Get the head indices of the transfer read/write.
  SmallVector<SmallString<8>, 4> indices;
  for (auto index : op.getIndices()) {
    assert(isDeclared(index) && "index has not been declared");
    indices.push_back(getName(index));
  }
  // Construct the physical indices.
  for (unsigned i = 0, e = op.getPermutationMap().getNumResults(); i < e; ++i) {
    auto expr = op.getPermutationMap().getResult(i);
    if (auto dimExpr = expr.template dyn_cast<AffineDimExpr>())
      indices[dimExpr.getPosition()] += " + iv" + std::to_string(i);
  }
  return indices;
}

/// Helper to get the TransferRead/Write condition.
template <typename TransferOpType>
static SmallString<16>
getTransferCondition(TransferOpType op,
                     const SmallVector<SmallString<8>, 4> &indices) {
  // Figure out whether the transfer read/write could be out of bound.
  SmallVector<unsigned, 4> outOfBoundDims;
  for (unsigned i = 0, e = op.getVectorType().getRank(); i < e; ++i)
    if (!op.isDimInBounds(i))
      outOfBoundDims.push_back(i);

  // Construct the condition of transfer if required.
  SmallString<16> condition;
  for (auto i : outOfBoundDims) {
    auto expr = op.getPermutationMap().getResult(i);
    if (auto dimExpr = expr.template dyn_cast<AffineDimExpr>()) {
      auto pos = dimExpr.getPosition();
      condition += indices[pos];
      condition += " < " + std::to_string(op.getShapedType().getDimSize(pos));
      if (i != outOfBoundDims.back())
        condition += " and ";
    }
  }
  return condition;
}

/// Vector-related statement emitters.
void ModuleEmitter::emitTransferRead(vector::TransferReadOp op) {
  auto rank = emitNestedLoopHeader(op.getVector());
  auto indices = getTransferIndices(op);
  auto condition = getTransferCondition(op, indices);

  if (!condition.empty()) {
    indent() << "if (" << condition << ")\n";
    addIndent();
  }

  indent();
  emitValue(op.getVector(), rank);
  os << " = ";
  emitValue(op.getSource());
  for (auto index : indices)
    os << "[" << index << "]";
  os << "\n";

  if (!condition.empty()) {
    reduceIndent();
    indent() << "else:\n";
    addIndent();

    indent();
    emitValue(op.getVector(), rank);
    os << " = ";
    emitValue(op.getPadding());
    os << "\n";
    reduceIndent();
  }
  emitNestedLoopFooter(rank);
}

void ModuleEmitter::emitTransferWrite(vector::TransferWriteOp op) {
  auto rank = emitNestedLoopHeader(op.getVector());
  auto indices = getTransferIndices(op);
  auto condition = getTransferCondition(op, indices);

  if (!condition.empty()) {
    indent() << "if (" << condition << ")\n";
    addIndent();
  }

  indent();
  emitValue(op.getSource());
  for (auto index : indices)
    os << "[" << index << "]";
  os << " = ";
  emitValue(op.getVector(), rank);
  os << "\n";

  if (!condition.empty())
    reduceIndent();
  emitNestedLoopFooter(rank);
}

void ModuleEmitter::emitBroadcast(vector::BroadcastOp op) {
  auto rank = emitNestedLoopHeader(op.getVector());
  indent();
  emitValue(op.getVector(), rank);
  os << " = ";
  emitValue(op.getSource());

  // Figure out whether each dimision is broadcast or multicast.
  if (auto type = op.getSource().getType().dyn_cast<ShapedType>())
    for (unsigned dim = 0, e = type.getRank(); dim < e; ++dim) {
      if (type.getDimSize(dim) == 1)
        os << "[0]";
      else
        os << "[iv" << dim + op.getType().getRank() - type.getRank() << "]";
    }

  os << ";";
  os << "\n";
  emitNestedLoopFooter(rank);
}

/// Memref-related statement emitters.
template <typename OpType> void ModuleEmitter::emitAlloc(OpType op) {
  // A declared result indicates that the memref is output of the function, and
  // has been declared in the function signature.
  if (isDeclared(op.getResult()))
    return;

  // Vivado HLS only supports static shape on-chip memory.
  if (!op.getType().hasStaticShape())
    emitError(op, "is unranked or has dynamic shape.");

  indent();
  emitArrayDecl(op.getResult());
  os << "\n";
}

void ModuleEmitter::emitLoad(memref::LoadOp op) {
  indent();
  emitValue(op.getResult());
  os << " = ";
  emitValue(op.getMemRef());
  os << "[";
  if (!op.getIndices().empty())
    for (auto index : op.getIndices()) {
      emitValue(index);
      os << ",";
    }
  else
    os << "0,";
  os << "]\n";
}

void ModuleEmitter::emitStore(memref::StoreOp op) {
  indent();
  emitValue(op.getMemRef());
  os << "[";
  if (!op.getIndices().empty())
    for (auto index : op.getIndices()) {
      emitValue(index);
      os << ",";
    }
  else
    os << "0,";
  os << "]";
  os << " = ";
  emitValue(op.getValueToStore());
  os << "\n";
}

void ModuleEmitter::emitMemCpy(memref::CopyOp op) {
//  indent() << "memcpy(";
  indent() << "";
//  emitValue(op.target());
//  os << " = ";
  emitValue(op.target());
  os << ".alias(";
  emitValue(op.getSource());
  os << ")";
//  os << ", ";

//  auto type = op.target().getType().cast<MemRefType>();
//  os << type.getNumElements() << " * sizeof(" << getTypeName(op.target())
//     << "))";
//  os << "\n";
  os << "\n";
}

void ModuleEmitter::emitGlobal(memref::GlobalOp op) {
  auto initial_val = op.initial_value();
  auto elem = initial_val->dyn_cast<DenseFPElementsAttr>();
  os << op.sym_name().str() << " = np.array([";
  for (const auto &item : elem.getValues<FloatAttr>())
    os << item.getValueAsDouble() << ", ";
  os << "]).reshape(";

  for (const auto &item : elem.getType().getShape())
    os << item << ", ";
  os << ")\n";
}

void ModuleEmitter::emitGetGlobal(memref::GetGlobalOp op) {
  indent();
  emitValue(op.getResult());
  os << " = GlobalMemRef(" << "'" << op.name() << "', " << op.name() << ")\n";
}

void ModuleEmitter::emitTensorStore(memref::TensorStoreOp op) {
  auto rank = emitNestedLoopHeader(op.getOperand(0));
  indent();
  emitValue(op.getOperand(1), rank);
  os << " = ";
  emitValue(op.getOperand(0), rank);
  os << "\n";
  emitNestedLoopFooter(rank);
}

template <typename OpType> void ModuleEmitter::emitReshape(OpType op) {
  auto array = op->getResult(0);
  assert(!isDeclared(array) && "has been declared before.");

  auto arrayType = array.getType().template cast<ShapedType>();
  //  indent() << getTypeName(array) << " (*";
  indent();

  // Add the new value to nameTable and emit its name.
  os << addName(array, false) << " = ";
  emitValue(op->getOperand(0));
  os << ".reshape(";

  for (auto &shape : arrayType.getShape())
    os << shape << ", ";
  os << ")";
  os << "\n";
}

void ModuleEmitter::emitTensorToMemref(bufferization::ToMemrefOp op) {
  // A declared result indicates that the memref is output of the function, and
  // has been declared in the function signature.
  if (isDeclared(op.getResult())) {
    auto rank = emitNestedLoopHeader(op.getResult());
    indent();
    emitValue(op.getResult(), rank);
    os << " = ";
    emitValue(op.getOperand(), rank);
    os << "\n";
    emitNestedLoopFooter(rank);
  } else {
    addAlias(op.getOperand(), op.getResult());
  }
}

void ModuleEmitter::emitMemrefToTensor(bufferization::ToTensorOp op) {
  // A declared result indicates that the tensor is output of the function, and
  // has been declared in the function signature.
  if (isDeclared(op.getResult())) {
    auto rank = emitNestedLoopHeader(op.getResult());
    indent();
    emitValue(op.getResult(), rank);
    os << " = ";
    emitValue(op.getOperand(), rank);
    os << "\n";
    emitNestedLoopFooter(rank);
  } else {
    addAlias(op.getOperand(), op.getResult());
  }
}

template <typename AssignOpType>
void ModuleEmitter::emitAssign(AssignOpType op) {
  unsigned rank = emitNestedLoopHeader(op.getResult());
  indent();
  emitValue(op.getResult(), rank);
  os << " = ";
  emitValue(op.getOperand(), rank);
  os << "\n";
  emitNestedLoopFooter(rank);
}

/// Control flow operation emitters.
void ModuleEmitter::emitCall(func::CallOp op) {
  // Handle returned value by the callee.
  for (auto result : op.getResults()) {
    if (!isDeclared(result)) {
      indent();
      if (result.getType().isa<ShapedType>())
        emitArrayDecl(result);
      else
        emitValue(result);
      os << "\n";
    }
  }

  // Emit the function call.
  indent() << op.getCallee() << "(";

  // Handle input arguments.
  unsigned argIdx = 0;
  for (auto arg : op.getOperands()) {
    emitValue(arg);

    if (argIdx++ != op.getNumOperands() - 1)
      os << ", ";
  }

  // Handle output arguments.
  for (auto result : op.getResults()) {
    // The address should be passed in for scalar result arguments.
    if (result.getType().isa<ShapedType>())
      os << ", ";
    else
      os << ", ";

    emitValue(result);
  }

  os << ")";
  os << "\n";
}

/// Standard expression emitters.
void ModuleEmitter::emitUnary(Operation *op, const char *syntax) {
  auto rank = emitNestedLoopHeader(op->getResult(0));
  indent();
  emitValue(op->getResult(0), rank);
  os << " = " << syntax << "(";
  emitValue(op->getOperand(0), rank);
  os << ")";
  os << "\n";
  emitNestedLoopFooter(rank);
}

void ModuleEmitter::emitBinary(Operation *op, const char *syntax) {
  auto rank = emitNestedLoopHeader(op->getResult(0));
  indent();
  emitValue(op->getResult(0), rank);
  os << " = ";
  emitValue(op->getOperand(0), rank);
  os << " " << syntax << " ";
  emitValue(op->getOperand(1), rank);
  os << "\n";
  emitNestedLoopFooter(rank);
}

template <typename OpType>
void ModuleEmitter::emitMaxMin(OpType op, const char *syntax) {
  auto rank = emitNestedLoopHeader(op.getResult());
  indent();
  emitValue(op.getResult());
  os << " = " << syntax << "(";
  emitValue(op.getLhs(), rank);
  os << ", ";
  emitValue(op.getRhs(), rank);
  os << ")";
  os << "\n";
  emitNestedLoopFooter(rank);
}

/// Special expression emitters.
void ModuleEmitter::emitSelect(arith::SelectOp op) {
  unsigned rank = emitNestedLoopHeader(op.getResult());
  unsigned conditionRank = rank;
  if (!op.getCondition().getType().isa<ShapedType>())
    conditionRank = 0;

  indent();
  emitValue(op.getResult(), rank);
  os << " = ";
  emitValue(op.getTrueValue(), rank);
  os << " if ";
  emitValue(op.getCondition(), conditionRank);
  os << " else ";
  emitValue(op.getFalseValue(), rank);
  os << "\n";
}

void ModuleEmitter::emitConstant(arith::ConstantOp op) {
  // This indicates the constant type is scalar (float, integer, or bool).
  if (isDeclared(op.getResult()))
    return;

  if (auto denseAttr = op.getValue().dyn_cast<DenseElementsAttr>()) {
    indent();
    emitArrayDecl(op.getResult());
    os << " = {";
    auto type = op.getResult().getType().cast<ShapedType>().getElementType();

    unsigned elementIdx = 0;
    for (auto element : denseAttr.getValues<Attribute>()) {
      if (type.isF32()) {
        auto value = element.cast<FloatAttr>().getValue().convertToFloat();
        if (std::isfinite(value))
          os << value;
        else if (value > 0)
          os << "INFINITY";
        else
          os << "-INFINITY";

      } else if (type.isF64()) {
        auto value = element.cast<FloatAttr>().getValue().convertToDouble();
        if (std::isfinite(value))
          os << value;
        else if (value > 0)
          os << "INFINITY";
        else
          os << "-INFINITY";

      } else if (type.isInteger(1))
        os << element.cast<BoolAttr>().getValue();
      else if (type.isIntOrIndex())
        os << element.cast<IntegerAttr>().getValue();
      else
        emitError(op, "array has unsupported element type.");

      if (elementIdx++ != denseAttr.getNumElements() - 1)
        os << ", ";
    }
    os << "}";
    //    os << "\n";
  } else
    emitError(op, "has unsupported constant type.");
}

/// C++ component emitters.
void ModuleEmitter::emitValue(Value val, unsigned rank, bool isPtr,
                              bool isRef) {
  assert(!(rank && isPtr) && "should be either an array or a pointer.");

  // Value has been declared before or is a constant number.
  if (isDeclared(val)) {
    os << getName(val);
    return;
  }

  // Add the new value to nameTable and emit its name.
  os << addName(val, isPtr);
}

void ModuleEmitter::emitArrayDecl(Value array, bool input, bool output) {
  assert(!isDeclared(array) && "has been declared before.");

  auto arrayType = array.getType().cast<ShapedType>();
  if (arrayType.hasStaticShape()) {
    emitValue(array);
    os << " = MemRef('";
    os << getName(array);
    os << "', ";
    if (!arrayType.getShape().empty())
      for (auto &shape : arrayType.getShape()) {
        os << shape << ", ";
      }
    else
      os << "1,";
    if (input)
      os << "input=True";
    else if (output)
      os << "output=True";
    os << ")";
  } else
    emitValue(array, /*rank=*/0, /*isPtr=*/true);
}

unsigned ModuleEmitter::emitNestedLoopHeader(Value val) {
  unsigned rank = 0;

  if (auto type = val.getType().dyn_cast<ShapedType>()) {
    if (!type.hasStaticShape()) {
      emitError(val.getDefiningOp(), "is unranked or has dynamic shape.");
      return 0;
    }

    // Declare a new array.
    if (!isDeclared(val)) {
      indent();
      emitArrayDecl(val);
      os << "\n";
    }

    // Create nested loop.
    unsigned dimIdx = 0;
    for (auto &shape : type.getShape()) {
      indent() << "for (int iv" << dimIdx << " = 0; ";
      os << "iv" << dimIdx << " < " << shape << "; ";
      os << "++iv" << dimIdx++ << ") {\n";

      addIndent();
    }
    rank = type.getRank();
  }

  return rank;
}

void ModuleEmitter::emitNestedLoopFooter(unsigned rank) {
  for (unsigned i = 0; i < rank; ++i) {
    reduceIndent();

    indent() << "\n";
  }
}

/// MLIR component and HLS C++ pragma emitters.
void ModuleEmitter::emitBlock(Block &block) {
  for (auto &op : block) {

//    if (!llvm::dyn_cast<scf::YieldOp>(op) &&
//        !llvm::dyn_cast<AffineYieldOp>(op)) {
//      std::string s;
//      llvm::raw_string_ostream rs{s};
//      op.print(rs);
//      std::stringstream ss(s);
//      std::string line;
//      while (std::getline(ss, line, '\n')) {
//        indent();
////        os << "# " << line << "\n";
//        os << "\n";
//        break;
//      }
//    }

    if (ExprVisitor(*this).dispatchVisitor(&op)) {
      continue;
    }

    if (StmtVisitor(*this).dispatchVisitor(&op)) {
      continue;
    }

    emitError(&op, "can't be correctly emitted.");
  }
}

void ModuleEmitter::emitFunction(FuncOp func) {
  if (func.getBlocks().size() != 1)
    emitError(func, "has zero or more than one basic blocks.");

  // Emit function signature.
  os << "def " << func.getName() << "(\n";
  addIndent();

  // This vector is to record all ports of the function.
  SmallVector<Value, 8> portList;

  // Emit input arguments.
  unsigned argIdx = 0;
  for (auto &arg : func.getArguments()) {
    indent();
    if (arg.getType().isa<ShapedType>()) {
      emitArrayDecl(arg, true, false);
    } else
      emitValue(arg);

    portList.push_back(arg);
    if (argIdx++ != func.getNumArguments() - 1)
      os << ",\n";
  }

  // Emit results.
  auto funcReturn = cast<func::ReturnOp>(func.front().getTerminator());
  for (auto result : funcReturn.getOperands()) {
    os << ",\n";
    indent();
    // TODO: a known bug, cannot return a value twice, e.g. return %0, %0 :
    // index, index. However, typically this should not happen.
    if (result.getType().isa<ShapedType>()) {
      emitArrayDecl(result, false, true);
    }
    else
      emitValue(result, /*rank=*/0, /*isPtr=*/true);

    portList.push_back(result);
  }

  reduceIndent();
  os << "\n):";
  os << "\n";

  // Emit function body.
  addIndent();

//  args = []
//for index in np.ndindex(*_arg0.curr_shape):
//  args.append(f"float {_arg0.var_name}_{'_'.join(map(str, index))}")
//for index in np.ndindex(*_56.curr_shape):
//  args.append(f"float* {_56.var_name}_{'_'.join(map(str, index))}")
//print(f"define void @forward({', '.join(args)}) {{\n")

  emitBlock(func.front());
  reduceIndent();
  os << "\n";

  // An empty line.
  os << "\n";
}

std::string getValIdent(Value &value) {
  llvm::SmallString<32> str;
  llvm::raw_svector_ostream os(str);
  mlir::AsmState asm_state(
      value.getDefiningOp()->getParentRegion()->getParentOfType<mlir::func::FuncOp>());
  value.printAsOperand(os, asm_state);
  return os.str().str();
}

/// Top-level MLIR module emitter.
void ModuleEmitter::emitModule(ModuleOp module) {
  os << R"XXX(import numpy as np
from bragghls.ir.memref import MemRef, GlobalMemRef
from bragghls.ir.ops import FMAC, ReduceAdd, Copy, SelfCopy
from bragghls.runner import parfor, Forward, make_output_file
import os

make_output_file(os.getenv("RUNNER_OUTPUT_FP") or __file__)

)XXX";
  os << "\n\n";
  os << " # fmt: off\n";
  for (auto &op : *module.getBody()) {
    if (auto func = dyn_cast<FuncOp>(op)) {
      //
    } else if (auto global = dyn_cast<memref::GlobalOp>(op)) {
      emitGlobal(global);
    } else
      emitError(&op, "is unsupported operation.");
  }
  os << " # fmt: on\n";
  os << "\n\n";
  for (auto &op : *module.getBody()) {
    if (auto func = dyn_cast<FuncOp>(op)) {
      if (func.getName() != "main")
        emitFunction(func);
    } else if (auto global = dyn_cast<memref::GlobalOp>(op)) {
      //
    } else
      emitError(&op, "is unsupported operation.");
  }
  os << R"XXX(
if __name__ == "__main__":
    Forward(forward)
)XXX";
}

//===----------------------------------------------------------------------===//
// Entry of bragghls-translate
//===----------------------------------------------------------------------===//

LogicalResult bragghls::emitHLSPy(ModuleOp module, llvm::raw_ostream &os) {
  BraggHLSEmitterState state(os);
  ModuleEmitter(state).emitModule(module);
  return failure(state.encounteredError);
}

void bragghls::registerEmitHLSPyTranslation() {
  static TranslateFromMLIRRegistration toHLSPy(
      "emit-hlspy", emitHLSPy, [&](DialectRegistry &registry) {
        bragghls::registerAllDialects(registry);
      });
}
