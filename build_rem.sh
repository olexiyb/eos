#/usr/bin/sh -x 
git submodule update --init --recursive
cd scripts/
./eosio_build.sh -s REM 
