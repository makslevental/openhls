set -e

fullfile=$1

BRAGGHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."

dirname=$(dirname $fullfile)
filename_with_ext=$(basename -- "$fullfile")
extension="${filename_with_ext##*.}"
filename="${filename_with_ext%.*}"

echo $dirname $filename_with_ext $extension $filename

rm $dirname/$filename.vvp || echo 0
if [[ "$extension" == "sv" ]]; then
  iverilog -o $dirname/$filename.vvp -I "$BRAGGHLS_DIR"/ip_cores -g2012 $dirname/"$filename"_tb.sv
else
  iverilog -o $dirname/$filename.vvp -I "$BRAGGHLS_DIR"/ip_cores $dirname/"$filename"_tb.v
fi

rm $dirname/*.vcd || echo 0
vvp $dirname/$filename.vvp

if [[ "$(uname)" == 'Darwin' ]]; then
  open -a Scansion $dirname/*.vcd
else
  gtkwave $dirname/*.vcd &
fi