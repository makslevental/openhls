#!/usr/bin/env bash

set -xeu -o pipefail

rsync -avpP $1 \
 --exclude="*.vcd" \
  --exclude="*.vvp" \
  --exclude="*.mlir" \
  --exclude="__pycache__" \
  --exclude=".Xil" \
  --exclude="checkpoints" \
  --exclude="project_*" \
  --exclude="reports" \
  --exclude="*.log" \
  --exclude="*.jou" \
  wing-artemis:~/