set -ex

fullfile=$1

dirname=$(dirname $fullfile)
filename=$(basename -- "$fullfile")
filename="${filename%.*}"

iverilog -o $dirname/$filename.vvp $dirname/"$filename"_tb.v
vvp $dirname/$filename.vvp

open -a Scansion $dirname/signals.vcd