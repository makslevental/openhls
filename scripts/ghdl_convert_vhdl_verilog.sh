#!/usr/bin/env bash

set -xeu -o pipefail

fullfile=$1
dir_path=$(dirname $fullfile)
filename=$(basename -- "$fullfile")
filename="${filename%.*}"

ghdl --synth --out=verilog -fsynopsys -fexplicit $fullfile -e $2 > $dir_path/$filename.sv