fullfile=$1
filename=$(basename -- "$fullfile")
extension="${filename##*.}"
filename="${filename%.*}"

mkdir -p $filename
pushd $filename

for i in {1..10} ; do
  unroll_factor=$((2**$i))
  ../scalehls-opt \
    $fullfile \
    -scalehls-pytorch-pipeline-v2="top-func=forward loop-unroll-factor=$unroll_factor" > $filename.mlir
  sed -i.bak '/cf.assert/d' ./$filename.mlir
  sed -i.bak '/memref.global/d' ./$filename.mlir
  ../scalehls-translate $filename.mlir -emit-hlscpp > ${filename}_unroll_$unroll_factor.cpp
  sed -i.bak 's/float/half/g' ./${filename}_unroll_$unroll_factor.cpp
  rm ${filename}_unroll_$unroll_factor.cpp.bak
done

