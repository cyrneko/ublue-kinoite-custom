#!/usr/bin/env fish

mkdir -p /tmp/mullvad_extract && cd /tmp/mullvad_extract
curl -o /tmp/wcurl "https://raw.githubusercontent.com/curl/wcurl/refs/heads/main/wcurl"
chmod +x /tmp/wcurl

/tmp/wcurl "https://mullvad.net/en/download/app/rpm/latest" --output /tmp/mullvad_extract/mullvad.rpm

ls -la
echo "rpm2archive NOW"
rpm2archive mullvad.rpm && tar xvf mullvad.rpm.tgz
ls -la

cp -r opt/Mullvad\ VPN/ /opt/

