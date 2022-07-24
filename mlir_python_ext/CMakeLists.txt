include(AddMLIRPython)


# Disables generation of "version soname" (i.e. libFoo.so.<version>), which
# causes pure duplication as part of Python wheels.
set(CMAKE_PLATFORM_NO_VERSIONED_SONAME ON)

# The directory at which the Python import tree begins.
# See documentation for `declare_mlir_python_sources`'s ROOT_DIR
# argument.
set(BRAGGHLS_PYTHON_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/torch_mlir")
set(BRAGGHLS_PYTHON_PACKAGES_DIR "${CMAKE_CURRENT_BINARY_DIR}/python_packages")

# We vendor our own MLIR instance in the `bragghls` namespace.
add_compile_definitions("MLIR_PYTHON_PACKAGE_PREFIX=bragghls.")

################################################################################
# Sources
################################################################################

declare_mlir_python_sources(BraggHLSPythonSources)
declare_mlir_python_sources(BraggHLSPythonExtensions)

################################################################################
# Extensions
################################################################################

declare_mlir_python_extension(BraggHLSPythonExtensions.Main
  MODULE_NAME _braggHLS
  ADD_TO_PARENT BraggHLSPythonExtensions
  SOURCES
    BraggHLSModule.cpp
  EMBED_CAPI_LINK_LIBS
    BraggHLSCAPI
  PRIVATE_LINK_LIBS
    LLVMSupport
)



set(_source_components
  MLIRPythonSources
  MLIRPythonExtension.Core
  MLIRPythonExtension.ExecutionEngine
  BraggHLSPythonSources
  BraggHLSPythonExtensions
)

add_mlir_python_common_capi_library(BraggHLSAggregateCAPI
  INSTALL_COMPONENT BraggHLSPythonModules
  INSTALL_DESTINATION python_packages/bragghls/bragghls/_mlir_libs
  OUTPUT_DIRECTORY "${BRAGGHLS_PYTHON_PACKAGES_DIR}/bragghls/bragghls/_mlir_libs"
  RELATIVE_INSTALL_ROOT "../../../.."
  DECLARED_SOURCES ${_source_components}
)

add_mlir_python_modules(BraggHLSPythonModules
  ROOT_PREFIX "${BRAGGHLS_PYTHON_PACKAGES_DIR}/bragghls/bragghls"
  INSTALL_PREFIX "python_packages/bragghls/bragghls"
  DECLARED_SOURCES ${_source_components}
  COMMON_CAPI_LINK_LIBS
    BraggHLSAggregateCAPI
  )
