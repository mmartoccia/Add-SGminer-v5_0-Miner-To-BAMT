#!/bin/sh
mine stop
sleep 5
cp x11.patch /tmp/
cp x13.patch /tmp/
cd /opt/miners/
git clone https://github.com/sgminer-dev/sgminer.git sgminer-v5_0
cd /opt/miners/sgminer-v5_0
cp /opt/miners/sgminer-4.1.0-sph/ADL_SDK/* /opt/miners/sgminer-v5_0/ADL_SDK/
make clean
sleep 5
chmod +x autogen.sh
./autogen.sh
sleep 2
CFLAGS="-O2 -Wall -march=native -I /opt/AMDAPP/include/" LDFLAGS="-L/opt/AMDAPP/lib/x86" ./configure --enable-opencl
sleep 5
make install
sleep 5
clear
cp example.conf /etc/bamt/sgminer-v5_0.conf
cd /etc/bamt/
patch /etc/bamt/bamt.conf <<.
116a117
>   cgminer_opts: --api-listen --config /etc/bamt/sgminer-v5_0.conf
124a127
>   # Sgminer v5_0
129a133
>   miner-sgminer-v5_0: 1
.
patch /opt/bamt/common.pl <<.
1477a1478,1480
>       } elsif (\${\$conf}{'settings'}{'miner-sgminer-v5_0'}) {
>         \$cmd = "cd /opt/miners/sgminer-v5_0/;/usr/bin/screen -d -m -S sgminer-v5_0 /opt/miners/sgminer-v5_0/sgminer \$args";
>         \$miner = "sgminer-v5_0";
.
cd /etc/bamt/
echo 'sgminer v5_0 Miner Installed.'
echo 'Please review your /etc/bamt/bamt.conf to enable.'
echo 'Configure /etc/bamt/sgminer-v5_0.conf with pool'
