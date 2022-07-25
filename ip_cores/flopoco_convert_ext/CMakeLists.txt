cmake_minimum_required(VERSION 3.4...3.18)
project(flopoco_converter)
set(CMAKE_CXX_STANDARD 17)

find_package(Python COMPONENTS Interpreter Development REQUIRED)
find_package(pybind11 CONFIG REQUIRED)


find_library(GMP_LIB NAMES gmp gmp.lib REQUIRED)
find_path(GMP_H gmp.h REQUIRED)
find_library(GMPXX_LIB NAMES gmpxx gmpxx.lib REQUIRED)
find_library(MPFR_LIB NAMES mpfr mpfr.lib REQUIRED)
find_library(MPFI_LIB NAMES mpfi mpfi.lib REQUIRED)

include_directories(${CMAKE_CURRENT_SOURCE_DIR} ${GMP_H} ${GMPXX_H} ${MPFI_H} ${MPFR_H})

add_executable(test src/test.cpp src/FPNumber.cpp)
target_link_libraries(
        test
        ${GMP_LIB} ${GMPXX_LIB} ${MPFI_LIB} ${MPFR_LIB}
)

pybind11_add_module(flopoco_converter src/converter.cpp src/FPNumber.cpp)
target_compile_definitions(flopoco_converter
                           PRIVATE VERSION_INFO=${EXAMPLE_VERSION_INFO})
target_link_libraries(
        flopoco_converter PRIVATE
        ${GMP_LIB} ${GMPXX_LIB} ${MPFI_LIB} ${MPFR_LIB}
)
