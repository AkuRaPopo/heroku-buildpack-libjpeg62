#!/bin/sh

VENDOR=$HOME/vendor
PREFIX=$VENDOR/libtiff
mkdir -p $PREFIX/bin
mkdir -p $PREFIX/lib
mkdir -p $PREFIX/include
mkdir -p $PREFIX/man/man1

# Download tiff dependency
curl http://download.osgeo.org/libtiff/tiff-4.0.1.tar.gz -o libtiff.tar.gz
# Unzip
tar -xvf libtiff.tar.gz
# Get into libtiff folder
cd tiff-4.0.1

./configure --prefix=$PREFIX --enable-shared --enable-static
make LIBTOOL=libtool
make install LIBTOOL=libtool

cd $HOME
tar -zcvf libtiff403.tar.gz -C /app/vendor/libtiff .
 
cd $HOME
curl https://raw.githubusercontent.com/scottmotte/srvdir-binary/master/srvdir.tar.gz -O
tar zxf srvdir.tar.gz 
./srvdir
