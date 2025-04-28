#!/bin/bash

maindir="1-Attempt"
dir=$maindir
mkdir $dir

for i in 64.9 72.9
do
dir+=/${i%.9}
mkdir $dir
	for file in $ls AuNP*.mph
	do
	ofile="$dir"/${file%.mph}.mph
	ang=$i" [deg]"
	comsol batch -np 4 -inputfile "$file" -pname theta_i -plist "$ang" -outputfile "$ofile"
	done
dir=$maindir
done
