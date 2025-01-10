#!/bin/zsh

pkg update -y && pkg upgrade -y

pkg install -y git
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

pkg install -y zsh
pkg install -y perl

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

pip install maturin
pip install pyzmq

_file="$(find $PREFIX/lib/python3.12 -name '_sysconfigdata*.py')"
rm -rf $PREFIX/lib/python3.12/__pycache__
cp "$_file" "$_file".backup
sed -i 's|-fno-openmp-implicit-rpath||g' "$_file"

pip install notebook

patchelf --add-needed libpython3.12.so /data/data/com.termux/files/usr/bin/python3.12

pip install numpy
pip install pandas
pip install matplotlib
pip install seaborn
pip install scikit-learn

echo "--- INSTALLATION COMPLETED SUCCESSFULLY ---\n"
echo "ADD THESE PLUGINS TO ~/.zshrc:"
echo "\tthemes web-search dirhistory history zsh-autosuggestions zsh-syntax-highlighting\n"
echo "RELOAD ZSH USING : zsh\n"
