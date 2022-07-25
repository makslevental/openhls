#!/usr/bin/env bash

set -xe -o pipefail

while getopts 'trvb' opt; do
  case $opt in
  t) TRANSLATE=true ;;
  r) REWRITE=true ;;
  v) VERILOG=true ;;
  b) TESTBENCH=true ;;
  *)
    echo "Unknown option -$OPTARG"
    exit 1
    ;;
  esac
done

shift $((OPTIND - 1))

if [ -z "${TRANSLATE}" ] && [ -z "${REWRITE}" ] && [ -z "${VERILOG}" ] && [ -z "${TESTBENCH}" ]; then
  ALL=true
fi

echo "TRANSLATE=${TRANSLATE} REWRITE=${REWRITE} VERILOG=${VERILOG} ALL=${ALL}"

BUILD_DIR=$(dirname "$(which torch-mlir-opt)")/..
export PYTHONPATH=$BUILD_DIR/tools/torch-mlir/python_packages/torch_mlir:$BUILD_DIR/tools/torch-mlir/python:$BUILD_DIR/../:$(pwd)

fullfile=$1
dir_path=$(dirname $fullfile)
filename=$(basename -- "$fullfile")
filename="${filename%.*}"
res_dir="${dir_path}/${filename}_bragghls_artifacts"
mkdir -p $res_dir

translate_to_python() {
  python scripts/hack_affine_scf.py $fullfile >$res_dir/$filename.affine.mlir
  bragghls_translate $res_dir/$filename.affine.mlir --emit-hlspy --mlir-print-elementsattrs-with-hex-if-larger=-1 -o $res_dir/$filename.py
}

rewrite_python() {
  python bragghls/transforms.py --py $res_dir/$filename.py
  COLLAPSE_MACS=0 python $res_dir/${filename}_rewritten.py
  COLLAPSE_MACS=1 python $res_dir/${filename}_rewritten.py
}

emit_verilog() {
  circt-opt $res_dir/${filename}_rewritten.mlir -test-lp-scheduler=with=Problem -allow-unregistered-dialect -o $res_dir/${filename}_rewritten.sched.mlir
  python bragghls/transforms.py --mlir $res_dir/${filename}_rewritten.sched.mlir --macs_fp $res_dir/${filename}_rewritten.macs.mlir
  python bragghls/rtl/emit_verilog.py $res_dir/${filename}_rewritten.macs_rewritten.mlir
  sed -i.bak 's/%/v_/g' $res_dir/${filename}.v
}

#generate_testbench() {
#  circt-opt $res_dir/${filename}_rewritten.mlir -test-lp-scheduler=with=Problem -allow-unregistered-dialect -o $res_dir/${filename}_rewritten.sched.mlir
#  python bragghls/transforms.py --mlir $res_dir/${filename}_rewritten.sched.mlir --macs_fp $res_dir/${filename}_rewritten.macs.mlir
#  python bragghls/rtl/emit_verilog.py $res_dir/${filename}_rewritten.macs_rewritten.mlir
#  sed -i.bak 's/%/v/g' $res_dir/${filename}_rewritten.macs_rewritten.v
#}

if [ -n "$TRANSLATE" ]; then
  translate_to_python
fi

if [ -n "$REWRITE" ]; then
  rewrite_python
fi

if [ -n "$VERILOG" ]; then
  emit_verilog
fi
