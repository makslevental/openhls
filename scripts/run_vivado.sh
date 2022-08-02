set -e
rm -rf project_1 .Xil checkpoints reports
source $(find $HOME/Xilinx/Vitis_HLS -name settings64.sh)
vivado -mode tcl -stack 2000 -source vivado_alt_synth.tcl
