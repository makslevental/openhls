//===----------------------------------------------------------------------===//
//
// Adapated from ScaleHLS https://github.com/hanchenye/scalehls
//
//===----------------------------------------------------------------------===//

#include "mlir/Tools/mlir-translate/MlirTranslateMain.h"
#include "EmitHLSPy.h"

int main(int argc, char **argv) {
  mlir::bragghls::registerEmitHLSPyTranslation();

  return mlir::failed(
      mlir::mlirTranslateMain(argc, argv, "BraggHLS Translation Tool"));
}
