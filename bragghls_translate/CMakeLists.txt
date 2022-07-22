get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(translation_libs GLOBAL PROPERTY MLIR_TRANSLATION_LIBS)

set(LLVM_LINK_COMPONENTS
        Support
        )

add_llvm_tool(bragghls_translate
        translate.cpp
        EmitHLSPy.cpp
        Utils.cpp
        )

llvm_update_compile_flags(bragghls_translate)

target_link_libraries(bragghls_translate
        PRIVATE
        ${dialect_libs}
        ${translation_libs}
        )