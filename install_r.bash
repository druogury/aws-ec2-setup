#!/bin/bash -v

mro='3.5.0'
cd $HOME

wget https://mran.blob.core.windows.net/install/mro/$mro/microsoft-r-open-$mro.tar.gz \
   && tar -xvf microsoft-r-open-$mro.tar.gz \
   && sudo ./microsoft-r-open/install.sh -au \
   && rm -rf /tmp/*

# fix things
wget -q -O /tmp/libpng12.deb http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb \
   && sudo dpkg -i /tmp/libpng12.deb \
   && rm /tmp/libpng12.deb

sudo apt-get install libssl-dev gfortran libxml2-dev r-cran-xml

exit 0
