#!/usr/bin/env ash

function prepareDatadir {
  datadir=$1
  etherbase=$2
  if [ ! -d $datadir/geth ]; then
    echo "----------> A new data directory will be created!"
    geth --datadir $datadir \
         --miner.etherbase $etherbase \
         --networkid "20531812" \
         --miner.gaslimit "0x59a5380" \
         init genesis.json
  fi
}
