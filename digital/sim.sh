#!/usr/bin/env bash

# nix shell nixpkgs#verilator nixpkgs#stdenv nixpkgs#gnumake nixpkgs#binutils

verilator --trace -Wall --cc top.sv --exe --build sim_top.cpp

# --trace
# --trace-fst

# -Wall -O3 --x-assign fast --x-initial fast --noassert

# display VCD
wd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
gtkwave $module.vcd --save=$module.gtkw --rcfile="$wd/gtkwaverc" &
