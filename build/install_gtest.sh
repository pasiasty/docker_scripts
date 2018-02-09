#!/bin/bash

cd ~
git clone https://github.com/google/googletest.git
cd googletest
git checkout release-1.8.0
mkdir build
cd build
cmake ..
make
make install

