//===----------------------------------------------------------------------===//
//
// Adapated from ScaleHLS https://github.com/hanchenye/scalehls
//
//===----------------------------------------------------------------------===//

#ifndef BRAGGHLS_TRANSLATION_EMITHLSPy_H
#define BRAGGHLS_TRANSLATION_EMITHLSPy_H

#include "mlir/IR/BuiltinOps.h"

namespace mlir {
namespace bragghls {

LogicalResult emitHLSPy(ModuleOp module, llvm::raw_ostream &os);
void registerEmitHLSPyTranslation();

} // namespace bragghls
} // namespace mlir

#endif // BRAGGHLS_TRANSLATION_EMITHLSPy_H
