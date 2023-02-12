//===----------------------------------------------------------------------===//
//
// Adapated from ScaleHLS https://github.com/hanchenye/scalehls
//
//===----------------------------------------------------------------------===//

#ifndef OPENHLS_TRANSLATION_EMITHLSPy_H
#define OPENHLS_TRANSLATION_EMITHLSPy_H

#include "mlir/IR/BuiltinOps.h"

namespace mlir {
namespace openhls {

LogicalResult emitHLSPy(ModuleOp module, llvm::raw_ostream &os);
void registerEmitHLSPyTranslation();

} // namespace openhls
} // namespace mlir

#endif // OPENHLS_TRANSLATION_EMITHLSPy_H
