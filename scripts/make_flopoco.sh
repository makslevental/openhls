BRAGGHLS_DIR="$( cd "$(dirname "$0")" ; pwd -P)/.."

function flopoco () {
    docker run --rm=true -v $BRAGGHLS_DIR/ip_cores:/flopoco_workspace flopoco "$@"
}

function make() {
  freq=$1
  echo $freq
  echo "fmul"
  flopoco FPMult wE=4 wF=4 name=fmul outputFile=flopoco_fmul_4_4.vhdl target=Virtex6 frequency=$freq clockEnable=1 2>&1 | grep "   Pipeline depth ="
  $BRAGGHLS_DIR/scripts/ghdl_convert_vhdl_verilog.sh flopoco_fmul_4_4.vhdl fmul &> /dev/null
  echo "fadd"
  flopoco FPAdd wE=4 wF=4 name=fadd dualPath=0 outputFile=flopoco_fadd_4_4.vhdl target=Virtex6 frequency=$freq clockEnable=1 2>&1  | grep "   Pipeline depth ="
  $BRAGGHLS_DIR/scripts/ghdl_convert_vhdl_verilog.sh flopoco_fadd_4_4.vhdl fadd /dev/null
  echo "\n"
}

#for freq in 100 150 200 250 300 350 400 450 500 550 600 650 700 750 800; do
#  make $freq
#done

make 400
