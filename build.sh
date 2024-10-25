#!/bin/sh

mkdir build_gcc
cd build_gcc || exit
cmake .. -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DCMAKE_CXX_COMPILER_LAUNCHER=sccache
make

cd ..

mkdir build_clang
cd build_clang || exit
cmake .. -DCMAKE_CXX_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER_LAUNCHER=sccache
make

cd ..

rm -rf build_*
