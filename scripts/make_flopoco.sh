#!/bin/bash

BRAGGHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."
export PATH=$BRAGGHLS_DIR/build/ghdl/bin:$PATH

function flopoco_here () {
    docker run --rm=true -v $BRAGGHLS_DIR/bragghls/ip_cores:/flopoco_workspace flopoco "$@"
}

function make() {
  freq=$1
  wE=$2
  wF=$3
  echo $freq

#  echo "fmul"
#  flopoco_here FPMult wE=$wE wF=$wF name=fmul outputFile=flopoco_fmul_${wE}_${wF}.vhdl target=Virtex6 frequency=$freq clockEnable=0
#  $BRAGGHLS_DIR/scripts/ghdl_convert_vhdl_verilog.sh $BRAGGHLS_DIR/bragghls/ip_cores/flopoco_fmul_${wE}_${wF}.vhdl fmul
#
#  echo "fadd"
#  flopoco_here FPAdd wE=$wE wF=$wF name=fadd dualPath=1 outputFile=flopoco_fadd_${wE}_${wF}.vhdl target=Virtex6 frequency=$freq clockEnable=0
#  $BRAGGHLS_DIR/scripts/ghdl_convert_vhdl_verilog.sh $BRAGGHLS_DIR/bragghls/ip_cores/flopoco_fadd_${wE}_${wF}.vhdl fadd

  echo "fdiv"
  flopoco_here FPDiv wE=$wE wF=$wF name=fdiv outputFile=flopoco_fdiv_${wE}_${wF}.vhdl target=Virtex6 frequency=$freq clockEnable=0
  $BRAGGHLS_DIR/scripts/ghdl_convert_vhdl_verilog.sh $BRAGGHLS_DIR/bragghls/ip_cores/flopoco_fdiv_${wE}_${wF}.vhdl fdiv

  echo "\n"
}

width_pairs=(
"4 4"
"5 5"
"6 6"
"7 7"
"8 8"
"4 10"
"8 23"
)

#frequencies=(100 150 200 250 300 350 400 450 500 550 600 650 700 750 800)
frequencies=(300)

for freq in "${frequencies[@]}"; do
  for widths in "${width_pairs[@]}"; do
    set -- $widths
    we=$1
    wf=$2
    make $freq $we $wf
  done
done



