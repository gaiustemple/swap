#! /bin/bash
swapoff /var/swap.img
touch /var/swap.img
chmod 600 /var/swap.img
dd if=/dev/zero of=/var/swap.img bs=1024k count=${1:-1000} >& /dev/null
mkswap /var/swap.img >& /dev/null
swapon /var/swap.img
echo "/var/swap.img    none    swap    sw    0    0" >> /etc/fstab
echo Swap size: ${1:-1000}MB
echo Done...