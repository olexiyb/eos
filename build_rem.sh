#!/bin/sh -x 
git submodule update --init --recursive
cd scripts/
./eosio_build.sh -s REM 
cd -
cd eosio.contracts/contracts/eosio.bios/src
eosio-cpp -I ../include -abigen -o eosio.bios.wasm eosio.bios.cpp
