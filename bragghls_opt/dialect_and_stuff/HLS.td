//===----------------------------------------------------------------------===//
//
// Copyright 2020-2021 The ScaleHLS Authors.
//
//===----------------------------------------------------------------------===//

#ifndef BRAGGHLS_DIALECT_HLS_HLS_TD
#define BRAGGHLS_DIALECT_HLS_HLS_TD

include "mlir/IR/AttrTypeBase.td"
include "mlir/IR/OpBase.td"

def HLSDialect : Dialect {
  let name = "hls";
  let summary = "An HLS out-of-tree MLIR dialect";
  let description = [{
    This dialect contains dedicated operations, types, and attributes designed
    for representing HLS C++ specific structures and components in MLIR, while
    enabling comprehensive optimization for both performance and area.
  }];
  let cppNamespace = "::mlir::bragghls::hls";
}

class HLSType<string name> : TypeDef<HLSDialect, name>;

class HLSAttr<string name> : AttrDef<HLSDialect, name>;

class HLSOp<string mnemonic, list<Trait> traits = []> :
    Op<HLSDialect, mnemonic, traits>;

include "Types.td"
include "Attributes.td"
include "Ops.td"

#endif // BRAGGHLS_DIALECT_HLS_HLS_TD
