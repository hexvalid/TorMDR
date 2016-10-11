#!/bin/bash
git clone https://git.torproject.org/tor.git
cd tor
patch -s -p0  < ../tormdr.patch 
sh autogen.sh
./configure --disable-asciidoc --disable-unittests --disable-system-torrc 
make
cd ..
mv tor/src/or/tor tormdr
rm -rf tor/
echo "TorMDR derlemesi tamamlandı"