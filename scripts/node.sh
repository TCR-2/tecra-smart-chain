#!/usr/bin/env ash
. ./scripts/functions.sh

bootnode=$(getent hosts bootnode | awk '{print $1}')
datadir=/root/.ethereum
etherbase=$1
mkdir -p $datadir/keystore
cp ./keystore/$etherbase.json $datadir/keystore
cp password $datadir/
cp enode.key $datadir/
cp static-nodes.json $datadir/
prepareDatadir $datadir $etherbase

geth --datadir $datadir init genesis.json
geth --datadir $datadir \
     --miner.etherbase $etherbase \
     --networkid "20531812" \
     --miner.gaslimit "0x59a5380" \
     --http --http.addr '0.0.0.0' --http.port 8545 --http.corsdomain '*' --http.api 'eth,net,web3' \
     --ws --ws.addr '0.0.0.0' --ws.port 8546 --ws.origins '*' --ws.api 'eth,net,web3' \
     --bootnodes "enode://6b3ca83c86d2d76614c8e248a7dd24fa656911389c7c2bc484bf9f5311bdf0e158726d7d842c11ec0b87e0bca4f01f04835a992ac3d965e75a5f3a773ebc5afd@136.244.102.64:30301" \
     --http.vhosts "localhost,tsc-01.tecra.space,tsc-02.tecra.space" \
     --port 30311 \
     --syncmode 'full' \
     --verbosity 3