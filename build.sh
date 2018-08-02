#!/bin/bash
./configure --disable-asciidoc --disable-unittests --disable-system-torrc 
make -j4
DESTDIR="./build" make install
echo "TorMDR compiled."