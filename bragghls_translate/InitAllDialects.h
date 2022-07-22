//===----------------------------------------------------------------------===//
//
// Adapated from ScaleHLS https://github.com/hanchenye/scalehls
//
//===----------------------------------------------------------------------===//

#ifndef BRAGGHLS_INITALLDIALECTS_H
#define BRAGGHLS_INITALLDIALECTS_H

#include "mlir/Dialect/Bufferization/IR/Bufferization.h"
#include "mlir/Dialect/DLTI/DLTI.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Linalg/IR/Linalg.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Tosa/IR/TosaOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Math/IR/Math.h"

namespace mlir {
namespace bragghls {

// Add all the BraggHLS dialects to the provided registry.
inline void registerAllDialects(mlir::DialectRegistry &registry) {
  // clang-format off
  registry.insert<
    mlir::func::FuncDialect,
    mlir::tosa::TosaDialect,
    mlir::linalg::LinalgDialect,
    mlir::memref::MemRefDialect,
    mlir::bufferization::BufferizationDialect,
    mlir::AffineDialect,
    mlir::math::MathDialect,
    mlir::arith::ArithmeticDialect,
    mlir::vector::VectorDialect,
    mlir::scf::SCFDialect,
    mlir::LLVM::LLVMDialect,
    mlir::DLTIDialect
  >();
  // clang-format on
}

} // namespace bragghls
} // namespace mlir

#endif // BRAGGHLS_INITALLDIALECTS_H
