#!/bin/bash

echo "Installing Dependenices"
sudo apt-get -y install build-essential cmake libx11-dev git

mkdir ~/Dlib
cp compile_dlib.sh ~/Dlib/
cd ~/Dlib
echo "Downloading Dlib"
git clone https://github.com/davisking/dlib.git

echo "Installing Dlib"
cd dlib 
mkdir build
cd build 
cmake .. -DUSE_AVX_INSTRUCTIONS=ON
cmake --build . --config Release
make 
sudo make install
sudo ldconfig

echo "Compiling the Dlib Unit Test"
cd ~/Dlib/dlib/dlib/test
mkdir build
cd build
cmake ..
cmake --build . --config Release
