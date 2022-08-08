#!/bin/bash

set -e
THIS_DIR=.
BRAGGHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."

TB_RANDOM=$((1 + $RANDOM % 1000))

sizes=(
5
8
11
14
16
)
nets=(
dot_product
linear
#linear_no_sum
#small_cnn
#double_cnn
)
width_pairs=(
"4 4"
"5 5"
"6 6"
"7 7"
"8 8"
"4 10"
"8 23"
)


for size in "${sizes[@]}"; do
  for net in "${nets[@]}"; do

    echo python $BRAGGHLS_DIR/examples/simple_nns.py $net --size $size --out_dir $THIS_DIR
    python $BRAGGHLS_DIR/examples/simple_nns.py $net --size $size --out_dir $THIS_DIR
    echo bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -t -r -s -v
    bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -t -r -s -v
    for widths in "${width_pairs[@]}"; do
      set -- $widths
      we=$1
      wf=$2
      echo TB_RANDOM=$TB_RANDOM WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -v -b -n 10 --threshold 0.05
      TB_RANDOM=$TB_RANDOM WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -v -b -n 10 --threshold 0.05
    done
  done
done