#!/usr/bin/env bash

start_time=$(date +%s)

./build-llvm.py \
  --targets ARM AArch64 \
  --projects clang lld \
  --no-update \
  -i out/Toolchain/armwowzer

end_time=$(date +%s)
elapsed=$((end_time - start_time))

echo "Build completed in ${elapsed} seconds"
