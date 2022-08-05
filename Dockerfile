FROM python:latest

RUN apt-get update
RUN apt-get install -y build-essential clang git vim \
    binutils-dev binutils-gold cmake ninja-build
RUN apt-get install -y libgmp3-dev libmpfr-dev libmpfi-dev iverilog

# Change linker to gold.
RUN update-alternatives --install "/usr/bin/ld" "ld" "/usr/bin/ld.gold" 20

# Use clang as the compiler.
ENV CC=/usr/bin/clang
ENV CXX=/usr/bin/clang++

RUN git clone https://github.com/makslevental/bragghls
WORKDIR bragghls

RUN ./scripts/clone_externals.sh
RUN pip install -r requirements.txt
RUN pip install . -vvvv

ENTRYPOINT BRAGGHLS_CONFIG_FP=bragghls_config.ini python examples/linear.py \
 && BRAGGHLS_CONFIG_FP=$(pwd)/bragghls_config.ini bragghls_compiler $(pwd)/examples/linear_bragghls_artifacts/linear.mlir -t -r -s -v -b \
  && /bin/bash
