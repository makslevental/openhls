set -ex

BUILD_DIR=$(dirname $(which torch-mlir-opt))/..
export PYTHONPATH=$BUILD_DIR/tools/torch-mlir/python_packages/torch_mlir:$BUILD_DIR/tools/torch-mlir/python:$BUILD_DIR/../

filename=$1

python transforms.py --py $filename

extension="${filename##*.}"
filename="${filename%.*}"

COLLAPSE_MACS=0 python ${filename}_rewritten.py
COLLAPSE_MACS=1 python ${filename}_rewritten.py

circt-opt ${filename}_rewritten.mlir -test-lp-scheduler=with=Problem -allow-unregistered-dialect -o ${filename}_rewritten.sched.mlir

python transforms.py --mlir ${filename}_rewritten.sched.mlir --macs_fp ${filename}_rewritten.macs.mlir
python rtl/emit_verilog.py ${filename}_rewritten.macs_rewritten.mlir
sed -i.bak 's/%/v/g' ${filename}_rewritten.macs_rewritten.v