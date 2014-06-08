Add-Multi Algo SGminer_v5-Miner-To-BAMT
========================

This is script will install sgminer V5 for multi-algorithm support within BAMT 1.6.0

#Minable Coins

##X11
- Darkcoin (DRK)
- X11Coin (XC)
- Logicoin (LGC)
- Hirocoin (HIC)
- MUNITI (MUN)
- Sync (SYNC)

##X13
- Boostcoin (BOST)
- MaruCoin (MARU)

#Instructions

```bash
git clone https://github.com/mmartoccia/Add-SGminer-v5_0-Miner-To-BAMT.git
cd Add-SGminer-v5_0-Miner-To-BAMT/
./sgminer-v5_0-Update.sh
```

Then review your bamt.conf and your sgminer-x11mod.conf and sgminer-x13mod.conf

#Settings

##Single MSI R9 280x 3.4 MH/s

"intensity" : "15",
"vector" : "1",
"worksize" : "256",
"kernel" : "x11mod",
"thread-concurrency" : "8192",
"lookup-gap" : "2",
"gpu-engine" : "1200",
"gpu-memclock" : "1500",
"gpu-powertune" : "20",
"gpu-vddc" : "1.200",
"gpu-threads" : "2"

##Sapphire R9 270x Vapor-X 10.43 MH/s (~2.08 MH/s per card)

"intensity" : "15",
"vectors" : "1",
"worksize" : "128",
"kernel" : "x11mod",
"thread-concurrency" : "8192",
"lookup-gap" : "2",
"gpu-engine" : "1150",
"gpu-memclock" : "1500",
"gpu-powertune" : "20",
"gpu-vddc" : "1.150",
"gpu-threads" : "2"

#Donate
credits to https://github.com/benmagro
BTC: 1GeA7ZeKV5yH68EkMQCLb2ygm9K4qotT2x
