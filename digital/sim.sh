#!/usr/bin/env bash

# testbench name must be provided
if [ $# -eq 0 ]; then
  echo Usage: sim.sh testbench_name [source_files]
  exit 1
fi 

module=$1

# collect given or all source files in current directory
if [ $# -eq 1 ]; then
  for f in *.sv; do files+=" $f"; done
else
  files="${@:2}"
fi

# replace SystemVerilog constructs not supported by iverilog with corresponding Verilog 
for f in $files; do 
  sed -r -e "s/always_ff/always/ig"              \
         -e "s/always_(latch|comb)/always @*/ig" \
            $f > $(basename $f .sv).v
  mfiles+=" $(basename $f .sv).v"
done

# elaborate modified source files (syntax check) and generate executable simulation
iverilog -o svsim -g 2005-sv -s $module $mfiles
if [ $? -ne 0 ]; then exit $?; fi

# execute simulation to generate VCD
vvp svsim
if [ $? -ne 0 ]; then exit $?; fi

# cleanup (delete simulation and modified source files)
rm svsim
for f in $mfiles; do rm $f; done

# display VCD
wd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
gtkwave $module.vcd --save=$module.gtkw --rcfile="$wd/gtkwaverc" &
