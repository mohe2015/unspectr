#!/bin/sh
set -ex

# nix shell nixpkgs#yosys nixpkgs#graphviz

yosys -qq  -f "verilog -sv -mem2reg"                                   \
           -p "hierarchy -check -top top"                              \
           -p proc    -p opt                                           \
           -p fsm     -p opt                                           \
           -p memory  -p opt                                           \
           -p flatten -p opt                                           \
           -p "opt_clean -purge"                                       \
           -p techmap -p opt                                           \
           -p "show -notitle -prefix top -format dot -viewer echo"     \
           -p "write_spice -top top test.cir"                                            \
           top.sv

dot top.dot -Tpdf -Gmargin=0 > top.pdf

xdg-open top.pdf