//===----------------------------------------------------------------------===//
//
// Copyright 2020-2021 The ScaleHLS Authors.
//
//===----------------------------------------------------------------------===//

#ifndef BRAGGHLS_DIALECT_HLS_OPS_TD
#define BRAGGHLS_DIALECT_HLS_OPS_TD

include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/Interfaces/ControlFlowInterfaces.td"

//===----------------------------------------------------------------------===//
// Dataflow Operations
//===----------------------------------------------------------------------===//

def DataflowNodeOp : HLSOp<"dataflow.node",
      [SingleBlockImplicitTerminator<"DataflowOutputOp">]> {
  let summary = "Dataflow node operation";
  let description = [{
    This operation represents a node of dataflow. It has a region, which is not
    isolated from above, to represent the operations contained by the node. The
    node can return variadic number of results.
  }];

  let hasCanonicalizer = 1;
  let hasVerifier = 1;
  let arguments = (ins OptionalAttr<I32Attr>:$level);
  let results = (outs Variadic<AnyType>:$outputs);
  let regions = (region SizedRegion<1>:$body);

  let builders = [OpBuilder<(ins "mlir::TypeRange":$outputs),
                            "build($_builder, $_state, outputs, nullptr);">];

  let assemblyFormat = [{
    `(` `)` (`->` qualified(type($outputs))^)? attr-dict-with-keyword $body
  }];
  let extraClassDeclaration = [{
    DataflowOutputOp getOutputOp();
    SmallVector<std::pair<mlir::Value, mlir::Operation *>> getDataflowUses();
  }];
}

def DataflowOutputOp : HLSOp<"dataflow.output",
      [Terminator, HasParent<"DataflowNodeOp">, ReturnLike]> {
  let summary = "Output operation of a dataflow node";
  let description = [{
    The operation terminates a dataflow node region and outputs internal values
    to the outside.
  }];

  let hasVerifier = 1;
  let arguments = (ins Variadic<AnyType>:$outputs);
  let builders = [ OpBuilder<(ins), "build($_builder, $_state, llvm::None);"> ];
}

#endif // BRAGGHLS_DIALECT_HLS_OPS_TD
