set -e
rm -rf xeda_run
source $(find $HOME/Xilinx/Vitis_HLS -name settings64.sh)

strategies=(
Runtime
Default
Timing
ExtraTimingCongestion
ExtraTiming
ExtraTimingAltRouting
Area
AreaHigh
AreaPower
AreaTiming
AreaExploreWithRemap
AreaExploreWithRemap2
AreaExplore
Power
)

for strategy in "${strategies[@]}"; do
  xeda run vivado_alt_synth --xedaproject xedaproject.toml --settings impl.strategy=$strategy synth.strategy=$strategy
done

for strategy in "${strategies[@]}"; do
  echo $strategy
  find . -wholename "*vivado_alt_synth*_${strategy}_${strategy}*post_route/timing_summary.rpt" -exec grep -H -A10 'Design Timing Summary' {} \;
done
