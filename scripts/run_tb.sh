set -e

fullfile=$1

BRAGGHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."

dirname=$(dirname $fullfile)
filename=$(basename -- "$fullfile")
filename="${filename%.*}"

rm $dirname/$filename.vvp || echo 0
iverilog -o $dirname/$filename.vvp -I "$BRAGGHLS_DIR"/ip_cores $dirname/"$filename"_tb.v
rm $dirname/*.vcd || echo 0
vvp $dirname/$filename.vvp

if [[ "$(uname)" == 'Darwin' ]]; then
  open -a Scansion $dirname/*.vcd
else
  gtkwave $dirname/*.vcd &
fi