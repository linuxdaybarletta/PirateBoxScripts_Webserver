#!/usr/bin/bash

mv /usr/sbin/hostapd /usr/sbin/hostapd~
mv hostapd.edimax /usr/sbin/
ln -s /usr/sbin/hostapd.edimax /usr/sbin/hostapd
chown root.root /usr/sbin/hostapd
chmod 755 /usr/sbin/hostapd
sed -i 's|driver=nl80211|driver=rtl871xdrv|g' /opt/piratebox/conf/hostapd.conf
