#!/bin/sh

# (1) Download the archive file including the C program that creates the memory initialization file
wget https://www.arch.cs.titech.ac.jp/wk/rvsoc/lib/exe/fetch.php?media=initmem_gen2.zip -O initmem_gen2.zip
unzip initmem_gen2.zip
cd initmem_gen2

# (2) Prepare three required binary files
cp ../bbl.bin .
cp ../root.bin .
cp ../devicetree.dtb .

# (3) Executing a program that creates a memory initialization file
make run
cd ../
cp initmem_gen2/initmem.bin .
cp initmem_gen2/init_kernel.txt .
cp initmem_gen2/init_disk.txt .
