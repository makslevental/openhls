set -e
rm -rf xeda_run
source $(find $HOME/Xilinx/Vitis_HLS -name settings64.sh)

strategies=(
Timing
ExtraTimingCongestion
ExtraTiming
ExtraTimingAltRouting
AreaTiming
)

for strategy in "${strategies[@]}"; do
  xeda run vivado_alt_synth --xedaproject xedaproject.toml --settings impl.strategy=$strategy synth.strategy=$strategy
done
