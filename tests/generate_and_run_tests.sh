#!/bin/bash

set -e
THIS_DIR=.
BRAGGHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."

TB_RANDOM=$((1 + $RANDOM % 1000))

sizes=(
5
6
8
#11
#14
#16
)
nets=(
dot_product
softmax
#double_cnn
simple_sum
exp
linear
#linear_no_sum
small_cnn
)
width_pairs=(
#"3 3"
"4 4"
"5 5"
"6 6"
"7 7"
"8 8"
#"4 10"
#"8 23"
)

function is_power_of_two () {
    declare -i n=$1
    (( n > 0 && (n & (n - 1)) == 0 ))
}

for size in "${sizes[@]}"; do
  for net in "${nets[@]}"; do
    if ! is_power_of_two "$size" && [ $net == "softmax" ]; then
      continue
    fi

    echo python $BRAGGHLS_DIR/examples/simple_nns.py $net --size $size --out_dir $THIS_DIR
    python $BRAGGHLS_DIR/examples/simple_nns.py $net --size $size --out_dir $THIS_DIR
    echo bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -t -r
    bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -t -r
    for widths in "${width_pairs[@]}"; do
      set -- $widths
      we=$1
      wf=$2

      if [ $we == "4" ] && [ $wf == "4" ] && [ $net == "softmax" ]; then
        continue
      fi

      echo WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -s
      WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -s
      echo TB_RANDOM=$TB_RANDOM WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -v -b -n 10 --threshold 0.1
      TB_RANDOM=$TB_RANDOM WIDTH_EXPONENT=$we WIDTH_FRACTION=$wf bragghls_compiler "${net}_${size}_bragghls_artifacts/${net}.mlir" -v -b -n 10 --threshold 0.1
      # clean up duh
      rm -rf "*/*.vcd"
      rm -rf "*/*.vvp"
    done
    rm -rf "${net}_${size}_bragghls_artifacts"
  done
done
