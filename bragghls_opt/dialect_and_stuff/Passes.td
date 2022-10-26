//===----------------------------------------------------------------------===//
//
// Copyright 2020-2021 The ScaleHLS Authors.
//
//===----------------------------------------------------------------------===//

#ifndef BRAGGHLS_TRANSFORMS_PASSES_TD
#define BRAGGHLS_TRANSFORMS_PASSES_TD

include "mlir/Pass/PassBase.td"

def AffineLoopUnrollJam :
      Pass<"bragghls-affine-loop-unroll-jam", "func::FuncOp"> {
  let summary = "Unroll and jam affine loop nests";
  let description = [{
    Unroll and jam from the outermost loop until the overall unroll factor
    reaches the specified "unroll-factor". Optionally, optimize the loop order
    after the unrolling.
  }];
  let constructor = "mlir::bragghls::createAffineLoopUnrollJamPass()";

  let options = [
    Option<"unrollFactor", "unroll-factor", "unsigned", /*default=*/"1",
           "Positive number: the factor of unrolling">,
    Option<"pointLoopOnly", "point-loop-only", "bool", /*default=*/"false",
           "Only apply unroll and jam to point loop band">,
    Option<"loopOrderOpt", "loop-order-opt", "bool", /*default=*/"false",
           "Whether loop order optimization after unrolling">
  ];
}

#endif // BRAGGHLS_TRANSFORMS_PASSES_TD
