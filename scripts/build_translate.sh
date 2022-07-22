#!/usr/bin/env bash

set -xeu -o pipefail

# The absolute path to the directory of this script.
BRAGGHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."
echo $BRAGGHLS_DIR

cd "${BRAGGHLS_DIR}"

mkdir -p "${BRAGGHLS_DIR}"/build/llvm

# configure llvm
if [ ! -f "${BRAGGHLS_DIR}"/build/llvm/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
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

mkdir -p "${BRAGGHLS_DIR}"/build/torch-mlir

#git submodule update --init --depth 1 -- "${BRAGGHLS_DIR}"/externals/torch-mlir/externals/llvm-external-projects
pushd "${BRAGGHLS_DIR}"/externals/torch-mlir/externals
git submodule update --init --depth 1 mlir-hlo
popd

if [ ! -f "${BRAGGHLS_DIR}"/build/torch-mlir/CMakeCache.txt ]; then
  cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${BRAGGHLS_DIR}"/build/llvm \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
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

mkdir -p "${BRAGGHLS_DIR}"/build/bragghls

if [ ! -f "${BRAGGHLS_DIR}"/build/bragghls/CMakeCache.txt ]; then
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${BRAGGHLS_DIR}"/build/llvm \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
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