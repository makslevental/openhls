#!/usr/bin/env bash

set -e -o pipefail

BRAGGHLS_DIR="$(
  cd "$(dirname "$0")"
  pwd -P
)/.."

eval "$(conda shell.bash hook)"
conda activate bragghls

BRAGGHLS_PATH=
for d in $BRAGGHLS_DIR/build/*; do
  BRAGGHLS_PATH="$BRAGGHLS_PATH:$d/bin"
done

export BRAGGHLS_PATH=$BRAGGHLS_PATH
export PATH=$PATH:$BRAGGHLS_PATH
export PYTHONPATH=$BRAGGHLS_DIR
echo $PYTHONPATH

export DEBUG=1

export ADD_PIPELINE_DEPTH=2
export MUL_PIPELINE_DEPTH=1
export WE=4
export WF=4

python $BRAGGHLS_DIR/bragghls/compiler/compile.py dot_product/dot_mlir -s -v -b --wE $WE --wF $WF
python $BRAGGHLS_DIR/bragghls/compiler/compile.py linear/linear_mlir -s -v -b --wE $WE --wF $WF
python $BRAGGHLS_DIR/bragghls/compiler/compile.py small_cnn/small_cnn_mlir -s -v -b --wE $WE --wF $WF
#python $BRAGGHLS_DIR/bragghls/compiler/compile.py double_cnn/double_cnn_mlir -s -v -b --wE $WE --wF $WF

export ADD_PIPELINE_DEPTH=6
export MUL_PIPELINE_DEPTH=2
export WE=5
export WF=5

python $BRAGGHLS_DIR/bragghls/compiler/compile.py dot_product/dot_mlir -s -v -b --wE $WE --wF $WF
python $BRAGGHLS_DIR/bragghls/compiler/compile.py linear/linear_mlir -s -v -b --wE $WE --wF $WF
python $BRAGGHLS_DIR/bragghls/compiler/compile.py small_cnn/small_cnn_mlir -s -v -b --wE $WE --wF $WF
#python $BRAGGHLS_DIR/bragghls/compiler/compile.py double_cnn/double_cnn_mlir -s -v -b --wE $WE --wF $WF

find . -type f -name '*.mlir' -delete
find . -type f -name '*.sv' -delete
find . -type f -name '*.vcd' -delete
find . -type f -name '*.vvp' -delete
find . -type f -name '*.xml' -delete
