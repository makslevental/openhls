#ifndef BRAGGHLS_DIALECT_HLS_ATTRIBUTES_TD
#define BRAGGHLS_DIALECT_HLS_ATTRIBUTES_TD

def LoopDirective : HLSAttr<"LoopDirective"> {
  let summary = "Aggregation of loop directives";
  let description = [{
    This attribute includes all loop directives, including loop pipelining,
    target initial interval (II), dataflow, and flattening.
  }];

  let hasCustomAssemblyFormat = 1;
  let mnemonic = "ld";
  let parameters = (ins "bool":$pipeline, "int64_t":$targetII, "bool":$dataflow,
                        "bool":$flatten);
}

def FuncDirective : HLSAttr<"FuncDirective"> {
  let summary = "Aggregation of function directives";
  let description = [{
    This attribute includes all function directives, including function
    pipelining, target interval, and dataflow.
  }];

  let hasCustomAssemblyFormat = 1;
  let mnemonic = "fd";
  let parameters = (ins "bool":$pipeline, "int64_t":$targetInterval,
                        "bool":$dataflow);
}

#endif // BRAGGHLS_DIALECT_HLS_ATTRIBUTES_TD
