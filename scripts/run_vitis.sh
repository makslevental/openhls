source /opt/tools/xilinx/Vitis_HLS/2022.1/settings64.sh

nets=(
addmm
batch_norm
braggnn
conv
matmul
max_pool_2d
soft_max
)
  
unroll_factors=(
2
4
8
16
32
64
128
256
512
1024
)

for net in "${nets[@]}"; do
  cp run_hls.tcl $net
  pushd $net
  for unroll_factor in "${unroll_factors[@]}"; do
    while [ $(jobs | wc -l) -ge 4 ] ; do sleep 1 ; done
    MODULE=${net}_unroll_${unroll_factor} vitis_hls run_hls.tcl &
  done
  popd
done