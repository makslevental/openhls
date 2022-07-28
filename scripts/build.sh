#!/usr/bin/env bash

set -xeu -o pipefail

# The absolute path to the directory of this script.
BRAGGHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."
C_COMPILER=clang-14
CXX_COMPILER=clang++-14
echo $BRAGGHLS_DIR

cd "${BRAGGHLS_DIR}"

git submodule sync --recursive
for submod in circt flopoco llvm-project torch-mlir; do
  git submodule update --init --depth 1 externals/$submod
done

####
# LLVM
####

mkdir -p "${BRAGGHLS_DIR}"/build/llvm

# configure llvm
if [ ! -f "${BRAGGHLS_DIR}"/build/llvm/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=$C_COMPILER \
    -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
    -DPython3_FIND_VIRTUALENV=ONLY \
    -DLLVM_ENABLE_PROJECTS=mlir \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_BUILD_TYPE=DEBUG \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DLLVM_TARGETS_TO_BUILD=host \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -S "${BRAGGHLS_DIR}"/externals/llvm-project/llvm \
    -B "${BRAGGHLS_DIR}"/build/llvm
fi

cmake --build "${BRAGGHLS_DIR}"/build/llvm --target all

####
# torch-mlir
####

mkdir -p "${BRAGGHLS_DIR}"/build/torch-mlir

pushd "${BRAGGHLS_DIR}"/externals/torch-mlir/externals
git submodule update --init --depth 1 mlir-hlo
popd

if [ ! -f "${BRAGGHLS_DIR}"/build/torch-mlir/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${BRAGGHLS_DIR}"/build/llvm \
    -DCMAKE_C_COMPILER=$C_COMPILER \
    -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
    -DPython3_FIND_VIRTUALENV=ONLY \
    -DMLIR_DIR="${BRAGGHLS_DIR}"/build/llvm/lib/cmake/mlir \
    -DLLVM_DIR="${BRAGGHLS_DIR}"/build/llvm/lib/cmake/llvm \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DLLVM_TARGETS_TO_BUILD=host \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -S "${BRAGGHLS_DIR}"/externals/torch-mlir \
    -B "${BRAGGHLS_DIR}"/build/torch-mlir
fi

cmake --build "${BRAGGHLS_DIR}"/build/torch-mlir --target all

pushd "${BRAGGHLS_DIR}"/externals/torch-mlir
TORCH_MLIR_CMAKE_BUILD_DIR="${BRAGGHLS_DIR}"/build/torch-mlir TORCH_MLIR_CMAKE_BUILD_DIR_ALREADY_BUILT=1 python setup.py install
popd

####
# circt
####

mkdir -p "${BRAGGHLS_DIR}"/build/circt

if [ ! -d "${BRAGGHLS_DIR}/externals/circt/ext" ]; then
  pushd "${BRAGGHLS_DIR}"/externals/circt
  source "${BRAGGHLS_DIR}"/externals/circt/utils/get-or-tools.sh
  popd
fi

if [ ! -f "${BRAGGHLS_DIR}"/build/circt/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${BRAGGHLS_DIR}"/build/llvm \
    -DCMAKE_C_COMPILER=$C_COMPILER \
    -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
    -DPython3_FIND_VIRTUALENV=ONLY \
    -DMLIR_DIR="${BRAGGHLS_DIR}"/build/llvm/lib/cmake/mlir \
    -DLLVM_DIR="${BRAGGHLS_DIR}"/build/llvm/lib/cmake/llvm \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DLLVM_TARGETS_TO_BUILD=host \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -DSCHEDULING_OR_TOOLS=ON \
    -S "${BRAGGHLS_DIR}"/externals/circt \
    -B "${BRAGGHLS_DIR}"/build/circt
fi

cmake --build "${BRAGGHLS_DIR}"/build/circt --target all

####
# bragghls
####

mkdir -p "${BRAGGHLS_DIR}"/build/bragghls

if [ ! -f "${BRAGGHLS_DIR}"/build/bragghls/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH="${BRAGGHLS_DIR}"/build/llvm \
      -DCMAKE_C_COMPILER=$C_COMPILER \
      -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
      -DPython3_FIND_VIRTUALENV=ONLY \
      -DMLIR_DIR="${BRAGGHLS_DIR}"/build/llvm/lib/cmake/mlir \
      -DLLVM_DIR="${BRAGGHLS_DIR}"/build/llvm/lib/cmake/llvm \
      -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
      -DLLVM_TARGETS_TO_BUILD=host \
      -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
      -S "${BRAGGHLS_DIR}" \
      -B "${BRAGGHLS_DIR}"/build/bragghls
fi

cmake --build "${BRAGGHLS_DIR}"/build/bragghls --target bragghls_translate
cmake --build "${BRAGGHLS_DIR}"/build/bragghls --target flopoco_converter

cp "${BRAGGHLS_DIR}"/build/bragghls/lib/flopoco_converter* "${BRAGGHLS_DIR}"/ip_cores/



wget https://github.com/ghdl/ghdl/releases/download/nightly/ghdl-gha-ubuntu-20.04-llvm.tgz
mkdir -p "${BRAGGHLS_DIR}"/build/ghdl
tar -xvf ghdl-gha-ubuntu-20.04-llvm.tgz -C "${BRAGGHLS_DIR}"/build/


# TODO
#PYBIND11_DIR=${PREFIX}/lib/python3.10/site-packages/pybind11/share/cmake/
#PYBIND11_DIR=$(python -c "import pybind11; print(pybind11.get_cmake_dir())")
#-DPYTHON_LIBRARY="/Users/mlevental/miniforge3/envs/bragghls/lib/libpython3.10.dylib" -DPYTHON_INCLUDE_DIR="/Users/mlevental/miniforge3/envs/bragghls/include/python3.10" \

#      -DPYTHON_INCLUDE_DIR="$(python -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())")"  \
#      -DPYTHON_LIBRARY="$(python -c "import distutils.sysconfig as sysconfig; print(sysconfig.get_config_var('LIBDIR'))")" \

#-Dpybind11_DIR=/home/mlevental/miniconda3/envs/bragghls/lib/python3.10/site-packages/pybind11/share/cmake/pybind11 -DPython_EXECUTABLE=/home/mlevental/miniconda3/envs/bragghls/bin/python