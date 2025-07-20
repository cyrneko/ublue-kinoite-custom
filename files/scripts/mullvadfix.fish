#!/usr/bin/env fish

mkdir -p /tmp/mullvad_extract && cd /tmp/mullvad_extract

wget --quiet "https://mullvad.net/en/download/app/rpm/latest" --output-document mullvad.rpm

ls -la
echo "rpm2archive NOW"
rpm2archive mullvad.rpm && tar xvf mullvad.rpm.tgz
ls -la

cp -r opt/Mullvad\ VPN/ /opt/

