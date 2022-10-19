#add_subdirectory(Transforms)

get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)

add_llvm_tool(bragghls-opt
    bragghls-opt.cpp
  )

llvm_update_compile_flags(bragghls-opt)

target_link_libraries(bragghls-opt
  PRIVATE
  ${dialect_libs}
  ${conversion_libs}
  MLIROptLib
  )


