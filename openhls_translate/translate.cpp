//===----------------------------------------------------------------------===//
//
// Adapated from ScaleHLS https://github.com/hanchenye/scalehls
//
//===----------------------------------------------------------------------===//

#include "mlir/Tools/mlir-translate/MlirTranslateMain.h"
#include "EmitHLSPy.h"

int main(int argc, char **argv) {
  mlir::openhls::registerEmitHLSPyTranslation();

  return mlir::failed(
      mlir::mlirTranslateMain(argc, argv, "OpenHLS Translation Tool"));
}
