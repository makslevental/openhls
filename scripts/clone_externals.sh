#!/usr/bin/env bash

set -xeu -o pipefail

OPENHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."

git submodule sync --recursive
for submod in circt llvm-project; do
  git submodule update --init --depth 1 $OPENHLS_DIR/externals/$submod
done

#pushd $OPENHLS_DIR/externals/torch-mlir/externals
#git submodule update --init --depth 1 mlir-hlo
#popd

bash externals/circt/utils/get-or-tools.sh