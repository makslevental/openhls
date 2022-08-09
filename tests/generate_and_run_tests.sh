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
small_cnn
double_cnn
softmax
exp
)
width_pairs=(
#"4 4"
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
    echo bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -t -r
    bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -t -r
    for widths in "${width_pairs[@]}"; do
      set -- $widths
      we=$1
      wf=$2
      if [ $we == "4" ] && [ $wf == "10" ] && [ $net == "softmax" ]; then
        continue
      elif [ $we == "8" ] && [ $wf == "23" ]; then
        div_depth=7
      else
        div_depth=4
      fi

      echo DIV_PIPELINE_DEPTH=$div_depth WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -s
      DIV_PIPELINE_DEPTH=$div_depth WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -s
      echo TB_RANDOM=$TB_RANDOM DIV_PIPELINE_DEPTH=$div_depth WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -v -b -n 10 --threshold 0.1
      TB_RANDOM=$TB_RANDOM DIV_PIPELINE_DEPTH=$div_depth WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -v -b -n 10 --threshold 0.1
    done
  done
done