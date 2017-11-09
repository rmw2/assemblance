#!/bin/bash

echo "Testing DWARF parsing for all optimization levels";
rm samples/*.o samples/*.s;

for opt in 0 1 2 3; do
    echo "
    Optimization: "$opt;
    echo "Compiling..."

    cd samples;
    mkdir O$opt;
    rm O$opt/*.o O$opt/*.s;
    # make .o and .s files for each
    for file in $(ls | grep .*c$); do
	   /usr/local/gcc-4.8.1-for-linux64/bin/x86_64-pc-linux-gcc -g -c -O$opt $file -o O$opt/${file%??}-O$opt.o;
	   /usr/local/gcc-4.8.1-for-linux64/bin/x86_64-pc-linux-gcc -g -S -O$opt $file -o O$opt/${file%??}-O$opt.s;
    done;

    cd ..;
    echo "Testing...
";
    for file in $(ls samples/O$opt | grep .*o$); do
	   echo "*************************************************";
	   echo "  $file      (-O$opt)";
	   echo "*************************************************";
	   python dwarf.py samples/O$opt/$file;
	   echo "";
    done;
done;
