#!/bin/sh -x
# check if keosd already occupy 8899 port and start it if not
if ! nc -zv 127.0.0.1 8899; then 
  nohup	./build/bin/keosd --wallet-dir $PWD/REM/ --http-server-address 127.0.0.1:8899  >build/keosd.log &
  sleep 1
fi
echo "LAST 10 lines from keosd log"
tail -10 build/keosd.log
echo "UNLOCK wallet"
echo "PW5JKbbKjFF7TUKDHUT39AHT7kQwZLJkiEHC9NyqiFXJppyJeQZCr" | ./build/bin/cleos -n --wallet-url http://127.0.0.1:8899 wallet unlock

# cleos create key --to-console
# Private key: 5KhEnLNFEVCDgHDkWYs9obLpHuxpvxKCMpyk63UGZSQYpzCnvax
# Public key: EOS8DbGDo7CvsaWnCxnixQeMLw1xZcPt2y79Nm1fx19QcTPJgtzg6
echo "Import private key for eosio EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV"
./build/bin/cleos -n --wallet-url http://127.0.0.1:8899 wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3

echo "All public keys"
./build/bin/cleos -n --wallet-url http://127.0.0.1:8899 wallet keys
#rm -rf $PWD/build/node1data/

killall nodeos
sleep 1
nohup ./build/bin/nodeos --enable-stale-production --producer-name eosio --plugin eosio::chain_api_plugin --plugin eosio::net_api_plugin --config-dir $PWD/REM/node1/ --data-dir $PWD/build/node1data/ > build/nodeos1.log &
sleep 2
build/bin/cleos --wallet-url http://127.0.0.1:8899 set contract eosio eosio.contracts/contracts/eosio.bios/src/ eosio.bios.wasm eosio.bios.abi

build/bin/cleos system listproducers

