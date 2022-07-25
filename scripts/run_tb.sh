set -e

fullfile=$1

dirname=$(dirname $fullfile)
filename=$(basename -- "$fullfile")
filename="${filename%.*}"

rm $dirname/$filename.vvp || echo 0
iverilog -o $dirname/$filename.vvp $dirname/"$filename"_tb.v
rm $dirname/*.vcd || echo 0
vvp $dirname/$filename.vvp

open -a Scansion $dirname/*.vcd