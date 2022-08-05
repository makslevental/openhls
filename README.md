# BraggHLS

- [BraggHLS](#bragghls)
- [TL;DR](#tl-dr)
- [Repo structure](#repo-structure)
- [Current status](#current-status)
- [Building](#building)
    * [Requirements](#requirements)
    * [Build steps](#build-steps)
- [Running](#running)

This a framework for lowering PyTorch models to RTL using high-level synthesis (HLS) techniques.
Crucially, we do **not** use any existing HLS tools (such as Xilinx's Vitis).
In addition, there are no fixed architecture designs (with the exception of [FloPoCo's](http://flopoco.org/) floating
point IPs) - no systolic arrays, no matrix multipliers - i.e., models are actually compiled.
The particular, driving, use case is low-latency [Bragg peak detection](https://arxiv.org/abs/2008.08198) for
high-energy diffraction microscopy (HEDM).

The "flow" is

<p align="center">
  <img width="1000" src="docs/images/bragghls_flow.png" alt="">
</p>

# TL;DR

Turn this

```python
class ConvPlusReLU(nn.Module):
    def __init__(self, in_channels, out_channels, bias):
        super().__init__()
        self.conv1 = torch.nn.Conv2d(in_channels, out_channels, 3, bias)
        self.conv2 = torch.nn.Conv2d(out_channels, in_channels, 3, bias)
        self.relu = torch.nn.ReLU()

    def forward(self, x):
        return self.relu(self.conv2(self.conv1(x)).sum())
```

into this

```mlir
#map = affine_map<(d0, d1) -> (d0 + d1)>
module attributes {torch.debug_module_name = "ConvPlusReLU"} {
  memref.global "private" constant @__constant_8x2x3x3xf32 : memref<8x2x3x3xf32> = dense<>
  memref.global "private" constant @__constant_8xf32 : memref<8xf32> = dense<[...]>
  memref.global "private" constant @__constant_2x8x3x3xf32 : memref<2x8x3x3xf32> = dense<"">
  memref.global "private" constant @__constant_2xf32 : memref<2xf32> = dense<[...]>
  func.func @forward(%arg0: memref<1x2x11x11xf32>) -> memref<f32> {
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
   
    ...
   
    %5 = memref.alloca() : memref<1x8x9x9xf32>
    memref.copy %4, %5 : memref<1x8x9x9xf32> to memref<1x8x9x9xf32>
    scf.parallel (%arg1, %arg2, %arg3, %arg4) = (%c0, %c0, %c0, %c0) to (%c1, %c8, %c9, %c9) step (%c1, %c1, %c1, %c1) {
      scf.for %arg5 = %c0 to %c2 step %c1 {
        scf.for %arg6 = %c0 to %c3 step %c1 {
          scf.for %arg7 = %c0 to %c3 step %c1 {
            %14 = affine.apply #map(%arg3, %arg6)
            %15 = affine.apply #map(%arg4, %arg7)
            %16 = memref.load %arg0[%arg1, %arg5, %14, %15] : memref<1x2x11x11xf32>
            %17 = memref.load %3[%arg2, %arg5, %arg6, %arg7] : memref<8x2x3x3xf32>
            %18 = memref.load %5[%arg1, %arg2, %arg3, %arg4] : memref<1x8x9x9xf32>
            %19 = arith.mulf %16, %17 : f32
            %20 = arith.addf %18, %19 : f32
            memref.store %20, %5[%arg1, %arg2, %arg3, %arg4] : memref<1x8x9x9xf32>
          }
        }
      }
      scf.yield
    }
    ...
  }
}
```

into this

![alt text](docs/images/small_cnn.png)

at ~200MHz (for 122 intervals).

# Repo structure

This project has a lot of moving parts; the directory structure tells the tale:

- [bragghls/](bragghls) - the core python library
    - [compiler/compiler.py](bragghls/compiler.py) - python script the drives the entire flow
    - [flopoco/](bragghls/flopoco) - functionality related to converting between [FloPoCo's](http://flopoco.org/)
      nonstandard floating point representation and IEEE754 (for purposes of RTL generation *and* simulation)
    - [ir/](bragghls/ir) - functionality related to parsing, transforming, and interpreting MLIR representations of
      PyTorch models.
    - [rtl/](bragghls/rtl) - functionality related to emitting RTL (SystemVerilog)
    - [testbench/](bragghls/testbench) - testbench runners via [cocotb](https://www.cocotb.org/)
      and [iverilog](http://iverilog.icarus.com/)
- [bragghls_translate/](bragghls_translate) - MLIR parser/emitter translation library for translating MLIR to python
- [examples/](examples) - obviously...
- [ip_cores/](ip_cores) - FloPoCo cores for 4,4 and 5,5 floating point addition and multiplication along with testbench
  generation
- [flopoco_convert_ext/](ip_cores/flopoco_convert_ext) - pybind-ed extension for converting between IEEE754 and
  FloPoCo's floating point representation
- [scripts/](scripts) - helper scripts for things like generating new FloPoCo IPs and building the entire project
- [tests/](tests) - obviously...

# Current status

![build_and_test](https://github.com/makslevental/bragghls/actions/workflows/build_and_test.yml/badge.svg)

[linear](examples/linear.py) and [cnn](examples/cnn.py) examples work (including tiling)
but [braggnn](examples/braggnn.py) still needs adjustment (compiles but doesn't pass tests).

# Docker

The easiest way to get started is to build a docker container using the [Dockerfile](Dockerfile):

```shell
docker build . -t bragghls && docker run -it bragghls
```

or just pull the latest image from dockerhub:

```shell
docker pull mlevental/bragghls:latest && docker run -it bragghls
```

# Building

The build steps are many and tortuous.

## Requirements

1. A compiler (GCC or Clang)
2. Python (>= 3.10) (recommended to use conda)
3. [GNU MP Bignum Library](https://gmplib.org/)
4. [GNU Multiple Precision Floating-Point Reliable Library](https://www.mpfr.org/)
5. [Multiple Precision Floating-point Interval library](http://perso.ens-lyon.fr/nathalie.revol/software.html)
6. [Icarus Verilog](http://iverilog.icarus.com/) (`sudo apt-get install iverilog`)
7. Patience

On Linux you can `bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"` for Clang and

```shell
sudo apt-get install libgmp3-dev libmpfr-dev libmpfi-dev iverilog
```

On Mac you can

```shell
brew install llvm gmp mpfr mpfi icarus-verilog
```

## Build steps

1. First make sure you have all the submodules checked out by running [scripts/clone_externals.sh](scripts/clone_externals.sh); This
   will take a while due to our dependency on LLVM.
2. `pip install -r requirements.txt` to get PyTorch and TorchMLIR; if this fails due to unsupported platform for
   TorchMLIR it's probably because wheels are broken (cf. [releases](https://github.com/llvm/torch-mlir/releases)).
   Consult [scripts/build.sh](scripts/build.sh) for how to build TorchMLIR from source, or feel free to reach out to me.
3. `pip install . -vvvv`. This will:
    1. Build all of LLVM
    2. Build CIRCT against LLVM
    3. Build `bragghls_translate` and `flopoco_converter`
    4. Put all of the things in the correct places (`circt-opt` and `bragghls_translate` in `venv/bin`)

If you get some mysterious errors like

```shell
The C++ compiler "/usr/bin/c++" is not able to compile a simple test program
```

make sure you have either GCC or Clang in your path but also set the `C_COMPILER`, `CXX_COMPILER` environment variables like this:

```shell
C_COMPILER=clang CXX_COMPILER=clang++ pip install . -vvvv
```

# Running

There is a small config file that sets necessary parameters (cf. [bragghls_config.ini](bragghls_config.ini)).
The path to this config file needs to be set as an environment variable before invoking any of the bragghls scripts, as such:

```shell
BRAGGHLS_CONFIG_FP=$(pwd)/bragghls_config.ini bragghls_compiler 
```

Note the `$(pwd)` which is necessary if you're running the testbenches.

Assuming everything built successfully and you have all of the correct paths and environment variables, run any of the
scripts in [examples](examples) to generate MLIR IR. 
Then the main [compiler driver](bragghls/compiler/compile.py) can be run with the following arguments

```shell
usage: BraggHLS compiler driver [-h] [-t] [-r] [-s] [-v] [-b] fp

positional arguments:
  fp               Filepath of top-level MLIR file

options:
  -h, --help       show this help message and exit
  -t, --translate  Translate MLIR to python
  -r, --rewrite    Transform/rewrite python
  -s, --schedule   Schedule the model using CIRCT
  -v, --verilog    Emit verilog
  -b, --testbench  Run autogenerated testbench
```

For example,

```shell
BRAGGHLS_CONFIG_FP=bragghls_config.ini python examples/linear.py
```

which runs [examples/linear.py](examples/linear.py) and produces an artifacts folder
at [examples/linear_bragghls_artifacts](examples/linear_bragghls_artifacts) which will contains a `linear.mlir` file
that looks like

```mlir
module attributes {torch.debug_module_name = "Linear"} {
  memref.global "private" constant @__constant_8x8xf32 : memref<8x8xf32> = dense<[...]>
  memref.global "private" constant @__constant_8xf32 : memref<8xf32> = dense<[...]>
  func.func @forward(%arg0: memref<1x8xf32>) -> memref<f32> {
    
    ...
    
    scf.for %arg1 = %c0 to %c1 step %c1 {
      scf.for %arg2 = %c0 to %c8 step %c1 {
        %7 = memref.load %4[%arg1, %arg2] : memref<1x8xf32>
        %8 = memref.load %6[] : memref<f32>
        %9 = arith.addf %7, %8 : f32
        memref.store %9, %6[] : memref<f32>
      }
    }
    return %6 : memref<f32>
  }
}
```

Then running

```shell
BRAGGHLS_CONFIG_FP=$(pwd)/bragghls_config.ini bragghls_compiler $(pwd)/examples/linear_bragghls_artifacts/linear.mlir -t -r -s -v -b
```

will generate `linear.sv` and run the automatically generated (no artifact) testbench, and produce the following output:

```
INFO: Running command: iverilog "-o "examples/linear_bragghls_artifacts/sim.vvp "-D "COCOTB_SIM=1 "-g2012 ...
     0.00ns INFO     Running on Icarus Verilog version 11.0 (stable)
     0.00ns INFO     Running tests with cocotb v1.6.2 from ...
     0.00ns INFO     Seeding Python random module with 1659448436
     0.00ns WARNING  Pytest not found, assertion rewriting will not occur
     0.00ns INFO     Found test tb_runner.test_tb
     0.00ns INFO     running test_tb (1/1)
     
outputs {'_6': [<IEEE -4.6549486522000025> <FPNumber -4.50e0:01110010010>]}
passed 43
outputs {'_6': [<IEEE -1.2715176573999998> <FPNumber -1.31e0:01101110101>]}
passed 87
outputs {'_6': [<IEEE -7.192521898300005> <FPNumber -6.75e0:01110011011>]}
passed 131
outputs {'_6': [<IEEE -0.42565990870000003> <FPNumber -5.00e-1:01101100000>]}
passed 175

...

passed 703
outputs {'_6': [<IEEE 5.495344332200002> <FPNumber 5.00e0:01010010100>]}
passed 747
outputs {'_6': [<IEEE 4.6494865835> <FPNumber 5.25e0:01010010101>]}
passed 791
outputs {'_6': [<IEEE -2.963233154800001> <FPNumber -3.12e0:01110001001>]}
passed 835
outputs {'_6': [<IEEE 3.8036288347999996> <FPNumber 4.00e0:01010010000>]}
passed 879


  1761.00ns INFO     test_tb passed
  1761.00ns INFO     **************************************************************************************
                     ** TEST                          STATUS  SIM TIME (ns)  REAL TIME (s)  RATIO (ns/s) **
                     **************************************************************************************
                     ** tb_runner.test_tb              PASS        1761.00           1.08       1636.30  **
                     **************************************************************************************
                     ** TESTS=1 PASS=1 FAIL=0 SKIP=0               1761.00           1.12       1571.26  **
                     **************************************************************************************
```

If you have a waveform viewer ([gtkwave](http://gtkwave.sourceforge.net/)
or [Scansion](http://www.logicpoet.com/scansion/)), then you can examine the generated `linear.vcd`:

![alt text](docs/images/waveform.png)
