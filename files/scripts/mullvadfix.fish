#!/usr/bin/env fish

mkdir -p /tmp/mullvad_extract && cd /tmp/mullvad_extract

wget "https://mullvad.net/en/download/app/rpm/latest" --output-document mullvad.rpm

rpm2archive mullvad.rpm && tar xvf mullvad.rpm.tgz

cp -r opt/Mullvad\ VPN/ /opt/

