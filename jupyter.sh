#!/bin/bash

pkg update -y && pkg upgrade -y

pkg install -y git
pkg install -y gh
pkg install -y python
pkg install -y wget
pkg install -y curl
pkg install -y termux-api
pkg install -y libzmq
pkg install -y clang
pkg install -y cmake
pkg install -y rust
pkg install -y binutils
pkg install -y patchelf

pip install maturin
pip install pyzmq

_file="$(find $PREFIX/lib/python3.12 -name '_sysconfigdata*.py')"
rm -rf $PREFIX/lib/python3.12/__pycache__
cp "$_file" "$_file".backup
sed -i 's|-fno-openmp-implicit-rpath||g' "$_file"

pip install jupyter

patchelf --add-needed libpython3.12.so /data/data/com.termux/files/usr/bin/python3.12

pip install numpy
pip install pandas
pip install matplotlib
pip install seaborn

echo "--- INSTALLATION COMPLETED SUCCESSFULLY ---"
