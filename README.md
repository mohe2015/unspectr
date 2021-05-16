# unspectr

nix shell nixpkgs#kicad

nix shell nixpkgs#qucs
https://github.com/Qucs/qucs/wiki/DC-Simulation

+++ kicad
https://www.woolseyworkshop.com/2019/07/01/performing-a-circuit-simulation-in-kicad/

++ ngSpice http://ngspice.sourceforge.net/
gnuCAP http://gnucap.org/dokuwiki/doku.php?id=gnucap:start

http://qucs.sourceforge.net/ (verilog support)


LTSpice https://www.analog.com/en/design-center/design-tools-and-calculators.html (not available for linux)

http://geda-project.org/ (seems to be not so user friendly)
https://www.kicad.org/

https://github.com/drahnr/oregano


https://en.wikipedia.org/wiki/List_of_free_electronics_circuit_simulators
https://en.wikipedia.org/wiki/Comparison_of_EDA_software

## Digital

nix shell nixpkgs#yosys nixpkgs#graphviz nixpkgs#verilog nixpkgs#gtkwave nixpkgs#xdot

Ctrl + P: ext install mshr-h.VerilogHDL
https://marketplace.visualstudio.com/items?itemName=mshr-h.VerilogHDL
Download extension, in vscodium: extensions -> ... -> install from vsix
https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions-marketplace

https://en.wikipedia.org/wiki/List_of_HDL_simulators

https://github.com/SymbiFlow/sv-tests

https://en.wikipedia.org/wiki/Comparison_of_EDA_software

https://sites.google.com/site/svedvkit ?

https://chipsalliance.org/

ORPSoC "The full design is around 150k gates + memories. It runs on standard Altera and Xilinx FPGA boards and is also available commercially from Flextronics."

https://opencores.org/

https://www.embecosm.com/appnotes/ean6/embecosm-or1k-verilator-tutorial-ean6-issue-1.html#chap_overview

https://github.com/ultraembedded/riscv
https://github.com/ultraembedded/biriscv
https://riscv.org/announcements/2015/09/risc-v-in-verilog/
https://www.hackster.io/news/rvsoc-offers-a-lightweight-linux-capable-risc-v-core-in-just-5-000-lines-of-verilog-9a49976a6664

https://www.arch.cs.titech.ac.jp/wk/rvsoc/doku.php

https://elinux.org/images/7/79/Open-Source_Tools_for_FPGA_Development.pdf

https://hackaday.com/tag/yosys/



### Simulation

https://github.com/verilator/verilator

http://iverilog.icarus.com/

### Synthesis

https://github.com/YosysHQ/yosys

http://opencircuitdesign.com/qflow/welcome.html

Yosys, SimbiFlow, and Icestorm

### Formal Verification

https://github.com/YosysHQ/SymbiYosys

### Crazy (stupid) idea: KiCad for Verilog

Seems like KiCad only accepts it's own format as netlist so I probably need a converter.

I also probably need technology mapping for yosys that makes sense.


iverilog -tpcb -ofoo.pcb -pnetlist=foo.net foo.v