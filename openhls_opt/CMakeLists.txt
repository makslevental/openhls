#add_subdirectory(Transforms)

get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)

add_llvm_tool(openhls-opt
    openhls-opt.cpp
  )

llvm_update_compile_flags(openhls-opt)

target_link_libraries(openhls-opt
  PRIVATE
  ${dialect_libs}
  ${conversion_libs}
  MLIROptLib
  )


