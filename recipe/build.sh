#!/bin/sh

export CFLAGS="-I$PREFIX/include -I$PREFIX/include/ncursesw"
export CXXFLAGS="-I$PREFIX/include -I$PREFIX/include/ncursesw -static-libstdc++"

autoconf
./configure --prefix=$PREFIX
make -j$CPU_COUNT
make install