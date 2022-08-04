#!/usr/bin/env bash

set -xeu -o pipefail

git submodule sync --recursive
for submod in circt flopoco llvm-project torch-mlir; do
  git submodule update --init --depth 1 externals/$submod
done

pushd externals/torch-mlir/externals
git submodule update --init --depth 1 mlir-hlo
popd

pushd externals/circt
source utils/get-or-tools.sh
popd
