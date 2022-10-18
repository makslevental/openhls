set -e

export BRAGGHLS_CONFIG_FP=../bragghls_config.ini

nets=(
addmm
batch_norm
#braggnn
conv
max_pool_2d
soft_max
)

export SCALE_HLS_COMPILE=1

for net in "${nets[@]}"; do
  for i in {1..20} ; do
    while [ $(jobs | wc -l) -ge 10 ] ; do sleep 1 ; done
    UNROLL_FACTOR=$i python simple_nns.py $net --size 16 &
#    python ../bragghls/compiler/compile.py ${net}_16/$net.mlir -t -r -s -v
  done
  UNROLL_FACTOR=1024 python simple_nns.py $net --size 16
done

for net in "${nets[@]}"; do
  pushd ${net}_16
  for i in {1..20} ; do
    while [ $(jobs | wc -l) -ge 10 ] ; do sleep 1 ; done
    filename=${net}_$i
    sed -i.bak '/cf.assert/d' ./$filename.mlir
    sed -i.bak '/memref.global/d' ./$filename.mlir
    sed -i.bak 's/memref\.get_global .* :/memref.alloca() :/g' ./$filename.mlir
    /home/mlevental/dev_projects/scalehls/build/bin/scalehls-translate $filename.mlir -emit-hlscpp > ${filename}.cpp
    sed -i.bak 's/float/half/g' ./${filename}.cpp
  done
  filename=${net}_1024
  sed -i.bak '/cf.assert/d' ./$filename.mlir
  sed -i.bak '/memref.global/d' ./$filename.mlir
  sed -i.bak 's/memref\.get_global .* :/memref.alloca() :/g' ./$filename.mlir
  /home/mlevental/dev_projects/scalehls/build/bin/scalehls-translate $filename.mlir -emit-hlscpp > ${filename}.cpp
  sed -i.bak 's/float/half/g' ./${filename}.cpp

  rm *.mlir *.bak

  popd
done

for i in {1..20} ; do
  while [ $(jobs | wc -l) -ge 10 ] ; do sleep 1 ; done
  UNROLL_FACTOR=$i python braggnn.py &
done
UNROLL_FACTOR=1024 python braggnn.py

pushd braggnn_1
for i in {1..20} ; do
  while [ $(jobs | wc -l) -ge 10 ] ; do sleep 1 ; done
  filename=braggnn_$i
  sed -i.bak '/cf.assert/d' ./$filename.mlir
  sed -i.bak '/memref.global/d' ./$filename.mlir
  sed -i.bak 's/memref\.get_global .* :/memref.alloca() :/g' ./$filename.mlir
  /home/mlevental/dev_projects/scalehls/build/bin/scalehls-translate $filename.mlir -emit-hlscpp > ${filename}.cpp
  sed -i.bak 's/float/half/g' ./${filename}.cpp
done
filename=braggnn_1024
sed -i.bak '/cf.assert/d' ./$filename.mlir
sed -i.bak '/memref.global/d' ./$filename.mlir
sed -i.bak 's/memref\.get_global .* :/memref.alloca() :/g' ./$filename.mlir
/home/mlevental/dev_projects/scalehls/build/bin/scalehls-translate $filename.mlir -emit-hlscpp > ${filename}.cpp
sed -i.bak 's/float/half/g' ./${filename}.cpp

rm *.mlir *.bak

popd