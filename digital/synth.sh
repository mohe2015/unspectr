#!/bin/sh

# module name must be provided
if [ $# -eq 0 ]; then
  echo Usage: synth module_name [source_files]
  exit 1
fi 

module=$1

# collect given or all source files (without testbenches containing $dumpfile) in current directory
if [ $# -eq 1 ]; then
  for f in *.sv; do 
    if ! grep -q "\$dumpfile" $f; then files+=" $f"; fi
  done
else
  files="${@:2}"
fi

# synthesize selected module to module.dot
# frontend option mem2reg used as workaround for not recognized memory
yosys -qq  -f "verilog -sv -mem2reg"                                   \
           -p "hierarchy -check -top $module"                          \
           -p proc    -p opt                                           \
           -p fsm     -p opt                                           \
           -p memory  -p opt                                           \
           -p flatten -p opt                                           \
           -p "opt_clean -purge"                                       \
           -p techmap -p opt                                           \
           -p "show -notitle -prefix $module -format dot -viewer echo" \
           $files
if [ $? -ne 0 ]; then exit $?; fi

# convert graph to pdf
dot $module.dot -Tpdf -Gmargin=0 > $module.pdf
if [ $? -ne 0 ]; then exit $?; fi

# report
echo $module.pdf
