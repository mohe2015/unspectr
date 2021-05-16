#!/usr/bin/env bash

# nix shell nixpkgs#verilator nixpkgs#gtkwave nixpkgs#stdenv nixpkgs#gnumake nixpkgs#binutils

verilator --trace -Wall --cc top.sv --exe --build sim_top.cpp
gtkwave top.vcd

# --trace
# --trace-fst

# -Wall -O3 --x-assign fast --x-initial fast --noassert



# maybe use iverilog as a slow additional verification (as it approaches simulation differently)