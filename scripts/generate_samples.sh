set -e

export OPENHLS_CONFIG_FP=/home/mlevental/dev_projects/openhls/openhls_config.ini

nets=(
addmm
batch_norm
conv
max_pool_2d
soft_max
)
  
unroll_factors=(
1/4
1
2
3
4
5
6
7
8
9
10
256
)

export SCALE_HLS_COMPILE=1

for net in "${nets[@]}"; do
  for i in "${unroll_factors[@]}" ; do
    unroll_factor=$((4*$i))
    # unroll_factor=$(($i+1))
    while [ $(jobs | wc -l) -ge 10 ] ; do sleep 1 ; done
    python simple_nns.py $net --size 16 && \
    /home/mlevental/dev_projects/openhls/cmake-build-debug/bin/openhls-opt --openhls-naive-loop-unroll=unroll-factor=$unroll_factor --openhls-naive-store-load-forward --cse ${net}_16/${net}.mlir > ${net}_16/${net}_$unroll_factor.mlir &
#    python ../openhls/compiler/compile.py ${net}_16/$net.mlir -t -r -s -v
  done
done

while [ $(jobs | wc -l) -ge 1 ] ; do sleep 1 ;
  jobs
done

for net in "${nets[@]}"; do
  pushd ${net}_16
  for i in "${unroll_factors[@]}" ; do
    unroll_factor=$((4*$i))
    # unroll_factor=$(($i+1))
    while [ $(jobs | wc -l) -ge 10 ] ; do sleep 1 ; done
    filename=${net}_$unroll_factor
    sed -i.bak '/cf.assert/d' ./$filename.mlir && \
    sed -i.bak '/memref.global/d' ./$filename.mlir && \
    sed -i.bak 's/memref\.get_global .* :/memref.alloca() :/g' ./$filename.mlir && \
    /home/mlevental/dev_projects/scalehls/build/bin/scalehls-translate $filename.mlir -emit-hlscpp > ${filename}.cpp && \
    sed -i.bak 's/float/half/g' ./${filename}.cpp && \
    sed -i.bak 's/max(/hls::half_fmax(/g' ./${filename}.cpp && \
    sed -i.bak 's/sqrt(/hls::half_sqrt(/g' ./${filename}.cpp && \
    sed -E -i.bak 's/memcpy\(v([0-9]*), v([0-9]*), 1 \* sizeof/memcpy(\&v\1, \&v\2, 1 * sizeof/g' ./${filename}.cpp &
  done
  popd
done

while [ $(jobs | wc -l) -ge 1 ] ; do sleep 1 ;
  jobs
done

python braggnn.py
for i in "${unroll_factors[@]}" ; do
  unroll_factor=$((4*$i))
  # unroll_factor=$(($i+1))
  while [ $(jobs | wc -l) -ge 10 ] ; do sleep 1 ; done
  /home/mlevental/dev_projects/openhls/cmake-build-debug/bin/openhls-opt --openhls-naive-loop-unroll=unroll-factor=$unroll_factor --openhls-naive-store-load-forward --cse braggnn_1/braggnn.mlir > braggnn_1/braggnn_$unroll_factor.mlir &
done

while [ $(jobs | wc -l) -ge 1 ] ; do sleep 1 ;
  jobs
done

pushd braggnn_1
for i in "${unroll_factors[@]}" ; do
  unroll_factor=$((4*$i))
  # unroll_factor=$(($i+1))
  filename=braggnn_$unroll_factor
  while [ $(jobs | wc -l) -ge 10 ] ; do sleep 1 ; done
  sed -i.bak '/cf.assert/d' ./$filename.mlir && \
  sed -i.bak '/memref.global/d' ./$filename.mlir && \
  sed -i.bak 's/memref\.get_global .* :/memref.alloca() :/g' ./$filename.mlir && \
  /home/mlevental/dev_projects/scalehls/build/bin/scalehls-translate $filename.mlir -emit-hlscpp > ${filename}.cpp && \
  sed -i.bak 's/float/half/g' ./${filename}.cpp && \
  sed -i.bak 's/max(/hls::half_fmax(/g' ./${filename}.cpp && \
  sed -i.bak 's/sqrt(/hls::half_sqrt(/g' ./${filename}.cpp && \
  sed -E -i.bak 's/memcpy\(v([0-9]*), v([0-9]*), 1 /memcpy(\&v\1, \&v\2, 1 /g' ./${filename}.cpp &
done
popd

while [ $(jobs | wc -l) -ge 1 ] ; do sleep 1 ;
  jobs
done

for net in "${nets[@]}"; do
  wc -l ${net}_16/*.cpp | sort -n
done

wc -l braggnn_1/*.cpp | sort -n

read -p "delete mlir? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
  for net in "${nets[@]}"; do
    rm -rf ${net}_16/*.mlir
    rm -rf ${net}_16/*.bak
  done
  rm -rf braggnn_1/*.mlir
  rm -rf braggnn_1/*.bak
fi
