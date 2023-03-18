#!/bin/sh
if [ -d "./build/" ]; then
	rm -rf build/
fi
mkdir build/
cd build/

cmake -DDEBUG=ON ..
# make 
make -j all 

cd ../

