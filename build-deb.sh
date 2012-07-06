#!/bin/sh

if [ ! -e jpgraph-tuleap_2.3.4.orig.tar.gz ]; then
    ln jpgraph-2.3.4.tar.gz jpgraph-tuleap_2.3.4.orig.tar.gz
fi

rm -rf jpgraph-2.3.4
tar xzf jpgraph-tuleap_2.3.4.orig.tar.gz
cp -a debian jpgraph-2.3.4/

cd jpgraph-2.3.4 && dpkg-buildpackage -us -uc

