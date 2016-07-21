#!/usr/bin/env bash
#
# Get certs for curl from upstream
#

mkdir /tmp/curl-ca-bundle
cd /tmp/curl-ca-bundle || exit 1
wget http://curl.haxx.se/download/curl-7.22.0.tar.bz2
tar xzf curl-7.22.0.tar.bz2

cd curl-7.22.0/lib/ || exit 1
./mk-ca-bundle.pl
if [ ! -d /usr/share/curl/ ]; then
  sudo mkdir -p /usr/share/curl/
else
  sudo mv /usr/share/curl/ca-bundle.crt /usr/share/curl/ca-bundle.crt.original
fi
sudo mv ca-bundle.crt /usr/share/curl/ca-bundle.crt
echo
echo "Done!"
