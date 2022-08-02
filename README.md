# BraggHLS

- [BraggHLS](#bragghls)
- [Current status](#current-status)
- [Building](#building)
  * [Requirements](#requirements)
  * [Build steps](#build-steps)
- [Running](#running)

This a framework for lowering PyTorch models to RTL using high-level synthesis (HLS) techniques.
Crucially, we do **not** use any existing HLS tools (such as Xilinx's Vitis).
In addition, there are no fixed architecture designs (with the exception of [FloPoCo's](http://flopoco.org/) floating point IPs) - no systolic arrays, no matrix multipliers - i.e., models are actually compiled.
The particular, driving, use case is low-latency [Bragg peak detection](https://arxiv.org/abs/2008.08198) for high-energy diffraction microscopy (HEDM).

The "flow" is PyTorch -> MLIR -> python -> MLIR -> RTL.

This project has a lot of moving parts; the directory structure tells the tale:

- [bragghls/](bragghls) - the core python library
  - [compiler/compiler.py](bragghls/compiler.py) - python script the drives the entire flow
  - [flopoco/](bragghls/flopoco) - functionality related to converting between [FloPoCo's](http://flopoco.org/) nonstandard floating point representation and IEEE754 (for purposes of RTL generation *and* simulation)
  - [ir/](bragghls/ir) - functionality related to parsing, transforming, and interpreting MLIR representations of PyTorch models.
  - [rtl/](bragghls/rtl) - functionality related to emitting RTL (SystemVerilog)
  - [testbench/](bragghls/testbench) - testbench runners via [cocotb](https://www.cocotb.org/) and [iverilog](http://iverilog.icarus.com/)
- [bragghls_translate/](bragghls_translate) - MLIR parser/emitter translation library for translating MLIR to python
- [examples/](examples) - obviously...
- [ip_cores/](ip_cores) - FloPoCo cores for 4,4 and 5,5 floating point addition and multiplication along with testbench generation
    - [flopoco_convert_ext/](ip_cores/flopoco_convert_ext) - pybind-ed extension for converting between IEEE754 and FloPoCo's floating point representation
- [scripts/](scripts) - helper scripts for things like generating new FloPoCo IPs and building the entire project
- [tests/](tests) - obviously...

# Current status

[linear](examples/linear.py) and [cnn](examples/cnn.py) examples work (including tiling) but [braggnn](examples/braggnn.py) still needs adjustment (compiles but doesn't pass tests).

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

Everything else should be taken care of by the build script (if I didn't miss anything...).

## Build steps

1. First make sure you have all the submodules checked out
    ```shell
    git submodule sync --recursive
    git submodule update --init --recursive --jobs 0
    ```
   This will take a while due to our dependency on LLVM.
2. `pip install -r requirements.txt` to get `cmake` and `pybind11` and `ninja` and necessary python packages
3. Run the build script [scripts/build.sh](scripts/build.sh) which will:
   1. Build all of LLVM
   2. Build Torch-MLIR against LLVM
   3. Build CIRCT against LLVM
   4. Build `bragghls_translate` and `flopoco_converter`
   5. Download GHDL and unpack it (this step is optional if you don't want to generate new IP)

You will need all the relevant executables (`circt-opt`, `torch-mlir-opt`, etc.) in your path **and in an env variable BRAGGHLS_PATH**. 
See [.envrc](.envrc) for a way to add all of them (or just use [direnv](https://direnv.net/)).
You will also need the following environment variables exported:

```shell
export ADD_PIPELINE_DEPTH=2
export MUL_PIPELINE_DEPTH=1
export WE=4
export WF=4
export PYTHONPATH=<BraggHLS source directory>
```

The above are the correct numbers for the 4,4 FloPoCo IP cores.

# Running

Assuming everything built successfully and you have all of the correct paths and environment variables, run any of the scripts in [examples](examples) to generate MLIR IR.
Then the main [compiler driver](bragghls/compiler/compile.py) can be run with the following arguments

```shell
usage: BraggHLS compiler driver [-h] [-t] [-r] [-s] [-v] [-b] [--wE WE] [--wF WF] fp

positional arguments:
  fp               Filepath of top-level MLIR file

options:
  -h, --help       show this help message and exit
  -t, --translate  Translate MLIR to python
  -r, --rewrite    Transform/rewrite python
  -s, --schedule   Schedule the model using CIRCT
  -v, --verilog    Emit verilog
  -b, --testbench  Run autogenerated testbench
  --wE WE          Bit width of exponent
  --wF WF          Bit width of fraction
```

For example, running [examples/linear.py](examples/linear.py) produces an artifacts folder at [examples/linear_bragghls_artifacts](examples/linear_bragghls_artifacts) which will contains a `linear.mlir` file that looks like

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

Then running (from top-level in the source directory)
```shell
python bragghls/compiler.py examples/linear_bragghls_artifacts/linear.mlir --t -r -s -v -b --wE 4 --wF 4
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