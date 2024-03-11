#!/usr/bin/env bash

set -xeu -o pipefail

# The absolute path to the directory of this script.
OPENHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."
C_COMPILER=$(which clang)
CXX_COMPILER=$(which clang++)
echo $OPENHLS_DIR

cd "${OPENHLS_DIR}"

git submodule sync --recursive
for submod in circt flopoco llvm-project torch-mlir; do
  git submodule update --init --depth 1 externals/$submod
done

####
# LLVM
####

mkdir -p "${OPENHLS_DIR}"/build/llvm

# configure llvm
if [ ! -f "${OPENHLS_DIR}"/build/llvm/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=$C_COMPILER \
    -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
    -DPython3_FIND_VIRTUALENV=ONLY \
    -DLLVM_ENABLE_PROJECTS=mlir \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_BUILD_TYPE=DEBUG \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DLLVM_TARGETS_TO_BUILD=host \
    -DPython3_FIND_VIRTUALENV=ONLY \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -S "${OPENHLS_DIR}"/externals/llvm-project/llvm \
    -B "${OPENHLS_DIR}"/build/llvm
fi

cmake --build "${OPENHLS_DIR}"/build/llvm --target all

####
# torch-mlir
####

mkdir -p "${OPENHLS_DIR}"/build/torch-mlir

pushd "${OPENHLS_DIR}"/externals/torch-mlir/externals
git submodule update --init --depth 1 mlir-hlo
popd

if [ ! -f "${OPENHLS_DIR}"/build/torch-mlir/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${OPENHLS_DIR}"/build/llvm \
    -DCMAKE_C_COMPILER=$C_COMPILER \
    -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
    -DPython3_FIND_VIRTUALENV=ONLY \
    -DMLIR_DIR="${OPENHLS_DIR}"/build/llvm/lib/cmake/mlir \
    -DLLVM_DIR="${OPENHLS_DIR}"/build/llvm/lib/cmake/llvm \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DLLVM_TARGETS_TO_BUILD=host \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -S "${OPENHLS_DIR}"/externals/torch-mlir \
    -B "${OPENHLS_DIR}"/build/torch-mlir
fi

cmake --build "${OPENHLS_DIR}"/build/torch-mlir --target all

pushd "${OPENHLS_DIR}"/externals/torch-mlir
TORCH_MLIR_CMAKE_BUILD_DIR="${OPENHLS_DIR}"/build/torch-mlir TORCH_MLIR_CMAKE_BUILD_DIR_ALREADY_BUILT=1 python setup.py install
popd

####
# circt
####

mkdir -p "${OPENHLS_DIR}"/build/circt

if [ ! -d "${OPENHLS_DIR}/externals/circt/ext" ]; then
  pushd "${OPENHLS_DIR}"/externals/circt
  source "${OPENHLS_DIR}"/externals/circt/utils/get-or-tools.sh
  popd
fi

if [ ! -f "${OPENHLS_DIR}"/build/circt/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${OPENHLS_DIR}"/build/llvm \
    -DCMAKE_C_COMPILER=$C_COMPILER \
    -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
    -DPython3_FIND_VIRTUALENV=ONLY \
    -DMLIR_DIR="${OPENHLS_DIR}"/build/llvm/lib/cmake/mlir \
    -DLLVM_DIR="${OPENHLS_DIR}"/build/llvm/lib/cmake/llvm \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DLLVM_TARGETS_TO_BUILD=host \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -DSCHEDULING_OR_TOOLS=ON \
    -S "${OPENHLS_DIR}"/externals/circt \
    -B "${OPENHLS_DIR}"/build/circt
fi

cmake --build "${OPENHLS_DIR}"/build/circt --target all

####
# openhls
####

mkdir -p "${OPENHLS_DIR}"/build/openhls

if [ ! -f "${OPENHLS_DIR}"/build/openhls/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH="${OPENHLS_DIR}"/build/llvm \
      -DCMAKE_C_COMPILER=$C_COMPILER \
      -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
      -DPython3_FIND_VIRTUALENV=ONLY \
      -DMLIR_DIR="${OPENHLS_DIR}"/build/llvm/lib/cmake/mlir \
      -DLLVM_DIR="${OPENHLS_DIR}"/build/llvm/lib/cmake/llvm \
      -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
      -DLLVM_TARGETS_TO_BUILD=host \
      -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
      -S "${OPENHLS_DIR}" \
      -B "${OPENHLS_DIR}"/build/openhls
fi

cmake --build "${OPENHLS_DIR}"/build/openhls --target openhls_translate

mkdir -p "${OPENHLS_DIR}"/build/flopoco_converter

if [ ! -f "${OPENHLS_DIR}"/build/flopoco_converter/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH="${OPENHLS_DIR}"/build/llvm \
      -DCMAKE_C_COMPILER=$C_COMPILER \
      -DPYBIND11_DIR="$(python -c "import pybind11; print(pybind11.get_cmake_dir())")" \
      -DCMAKE_CXX_COMPILER=$CXX_COMPILER \
      -DPython3_FIND_VIRTUALENV=ONLY \
      -DMLIR_DIR="${OPENHLS_DIR}"/build/llvm/lib/cmake/mlir \
      -DLLVM_DIR="${OPENHLS_DIR}"/build/llvm/lib/cmake/llvm \
      -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
      -DLLVM_TARGETS_TO_BUILD=host \
      -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
      -S "${OPENHLS_DIR}"/extensions/flopoco_convert_ext \
      -B "${OPENHLS_DIR}"/build/flopoco_converter
fi

cmake --build "${OPENHLS_DIR}"/build/flopoco_converter --target flopoco_converter
cp "${OPENHLS_DIR}"/build/flopoco_converter/flopoco_converter* "${OPENHLS_DIR}"/openhls/flopoco/

if [ ! -f "${OPENHLS_DIR}"/build/ghdl/bin/ghdl ]; then
  if [[ "$(uname)" == 'Darwin' ]]; then
    wget https://github.com/ghdl/ghdl/releases/download/nightly/ghdl-macos-10.15-llvm.tgz
    mkdir -p "${OPENHLS_DIR}"/build/ghdl
    tar -xvf ghdl-macos-10.15-llvm.tgz -C "${OPENHLS_DIR}"/build/ghdl
  else
    wget https://github.com/ghdl/ghdl/releases/download/nightly/ghdl-gha-ubuntu-20.04-llvm.tgz
    mkdir -p "${OPENHLS_DIR}"/build/ghdl
    tar -xvf ghdl-gha-ubuntu-20.04-llvm.tgz -C "${OPENHLS_DIR}"/build/ghdl
  fi
fi