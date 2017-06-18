# Create memory swap
Create/change a memory swap file on your vps
```
apt-get install git && git clone https://github.com/gaiustemple/swap.git && cp swap/swap.sh /usr/bin/swap && chmod +x /usr/bin/swap
```
# Usage
```
# To create 1GB swap file
swap
# or 
swap 1000
# 2.5GB file like this (u get the idea)
swap 2500
