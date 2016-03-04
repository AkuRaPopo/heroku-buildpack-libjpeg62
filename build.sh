#!/bin/sh

VENDOR=$HOME/vendor
PREFIX=$VENDOR/libtiff
mkdir -p $PREFIX/bin
mkdir -p $PREFIX/lib
mkdir -p $PREFIX/include
mkdir -p $PREFIX/man/man1

# Download tiff dependency
curl http://download.osgeo.org/libtiff/tiff-3.9.7.zip -o libtiff.tar.gz
# Unzip
tar -xvf libtiff.tar.gz
# Get into libtiff folder
cd tiff-3.9.7

./configure --prefix=$PREFIX --enable-shared --enable-static
make LIBTOOL=libtool
make install LIBTOOL=libtool

cd $VENDOR/libtiff
tar -cvzf libtiff403.tar.gz -C $VENDOR/libtiff .

cd $HOME
curl https://raw.githubusercontent.com/scottmotte/srvdir-binary/master/srvdir.tar.gz -O
tar zxf srvdir.tar.gz
./srvdir
