include(AddMLIRPython)


# Disables generation of "version soname" (i.e. libFoo.so.<version>), which
# causes pure duplication as part of Python wheels.
set(CMAKE_PLATFORM_NO_VERSIONED_SONAME ON)

# The directory at which the Python import tree begins.
# See documentation for `declare_mlir_python_sources`'s ROOT_DIR
# argument.
set(OPENHLS_PYTHON_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/torch_mlir")
set(OPENHLS_PYTHON_PACKAGES_DIR "${CMAKE_CURRENT_BINARY_DIR}/python_packages")

# We vendor our own MLIR instance in the `openhls` namespace.
add_compile_definitions("MLIR_PYTHON_PACKAGE_PREFIX=openhls.")

################################################################################
# Sources
################################################################################

declare_mlir_python_sources(OpenHLSPythonSources)
declare_mlir_python_sources(OpenHLSPythonExtensions)

################################################################################
# Extensions
################################################################################

declare_mlir_python_extension(OpenHLSPythonExtensions.Main
  MODULE_NAME _openHLS
  ADD_TO_PARENT OpenHLSPythonExtensions
  SOURCES
    OpenHLSModule.cpp
  EMBED_CAPI_LINK_LIBS
    OpenHLSCAPI
  PRIVATE_LINK_LIBS
    LLVMSupport
)



set(_source_components
  MLIRPythonSources
  MLIRPythonExtension.Core
  MLIRPythonExtension.ExecutionEngine
  OpenHLSPythonSources
  OpenHLSPythonExtensions
)

add_mlir_python_common_capi_library(OpenHLSAggregateCAPI
  INSTALL_COMPONENT OpenHLSPythonModules
  INSTALL_DESTINATION python_packages/openhls/openhls/_mlir_libs
  OUTPUT_DIRECTORY "${OPENHLS_PYTHON_PACKAGES_DIR}/openhls/openhls/_mlir_libs"
  RELATIVE_INSTALL_ROOT "../../../.."
  DECLARED_SOURCES ${_source_components}
)

add_mlir_python_modules(OpenHLSPythonModules
  ROOT_PREFIX "${OPENHLS_PYTHON_PACKAGES_DIR}/openhls/openhls"
  INSTALL_PREFIX "python_packages/openhls/openhls"
  DECLARED_SOURCES ${_source_components}
  COMMON_CAPI_LINK_LIBS
    OpenHLSAggregateCAPI
  )
