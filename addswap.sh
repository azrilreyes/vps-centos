#!/bin/sh
if [ ! -e /swap ] ; then
    echo creating swap file for this machine
    fallocate -l 4G /swap && chmod 600 /swap && mkswap /swap && swapon /swap
    echo "/swap none swap sw 0 0" >> /etc/fstab
    echo done creating swap file
fi
else 
if [ ! -w "$file" ] ; then
    echo cannot write to $file
fi
echo "vm.swappiness = 10" | tee -a /etc/sysctl.conf
echo "vm.vfs_cache_pressure = 50" tee -a /etc/sysctl.conf
sysctl -p
sysctl -a
