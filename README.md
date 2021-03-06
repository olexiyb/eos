
# EOSIO - The Most Powerful Infrastructure for Decentralized Applications

[![Build status](https://badge.buildkite.com/370fe5c79410f7d695e4e34c500b4e86e3ac021c6b1f739e20.svg?branch=master)](https://buildkite.com/EOSIO/eosio)

Welcome to the EOSIO source code repository! This software enables businesses to rapidly build and deploy high-performance and high-security blockchain-based applications.

Some of the groundbreaking features of EOSIO include:

1. Free Rate Limited Transactions
1. Low Latency Block confirmation (0.5 seconds)
1. Low-overhead Byzantine Fault Tolerant Finality
1. Designed for optional high-overhead, low-latency BFT finality
1. Smart contract platform powered by WebAssembly
1. Designed for Sparse Header Light Client Validation
1. Scheduled Recurring Transactions
1. Time Delay Security
1. Hierarchical Role Based Permissions
1. Support for Biometric Hardware Secured Keys (e.g. Apple Secure Enclave)
1. Designed for Parallel Execution of Context Free Validation Logic
1. Designed for Inter Blockchain Communication

EOSIO is released under the open source MIT license and is offered “AS IS” without warranty of any kind, express or implied. Any security provided by the EOSIO software depends in part on how it is used, configured, and deployed. EOSIO is built upon many third-party libraries such as WABT (Apache License) and WAVM (BSD 3-clause) which are also provided “AS IS” without warranty of any kind. Without limiting the generality of the foregoing, Block.one makes no representation or guarantee that EOSIO or any third-party libraries will perform as intended or will be free of errors, bugs or faulty code. Both may fail in large or small ways that could completely or partially limit functionality or compromise computer systems. If you use or implement EOSIO, you do so at your own risk. In no event will Block.one be liable to any party for any damages whatsoever, even if it had been advised of the possibility of damage.  

Block.one is neither launching nor operating any initial public blockchains based upon the EOSIO software. This release refers only to version 1.0 of our open source software. We caution those who wish to use blockchains built on EOSIO to carefully vet the companies and organizations launching blockchains based on EOSIO before disclosing any private keys to their derivative software.

There is no public testnet running currently.

---

**If you used our build scripts to install eosio, [please be sure to uninstall](#build-script-uninstall) before using our packages.**

---

#### Mac OS X Brew Install
```sh
$ brew tap eosio/eosio
$ brew install eosio
```
#### Mac OS X Brew Uninstall
```sh
$ brew remove eosio
```

#### Ubuntu 18.04 Package Install
```sh
$ wget https://github.com/eosio/eos/releases/download/v1.8.0-rc2/eosio_1.8.0-rc2-ubuntu-18.04_amd64.deb
$ sudo apt install ./eosio_1.8.0-rc2-ubuntu-18.04_amd64.deb
```
#### Ubuntu 16.04 Package Install
```sh
$ wget https://github.com/eosio/eos/releases/download/v1.8.0-rc2/eosio_1.8.0-rc2-ubuntu-16.04_amd64.deb
$ sudo apt install ./eosio_1.8.0-rc2-ubuntu-16.04_amd64.deb
```
#### Ubuntu Package Uninstall
```sh
$ sudo apt remove eosio
```
#### Centos RPM Package Install
```sh
$ wget https://github.com/eosio/eos/releases/download/v1.8.0-rc2/eosio-1.8.0-rc2.el7.x86_64.rpm
$ sudo yum install ./eosio-1.8.0-rc2.el7.x86_64.rpm
```
#### Centos RPM Package Uninstall
```sh
$ sudo yum remove eosio
```

#### Build Script Uninstall

If you have previously installed EOSIO using build scripts, you have two options (neither impact your data directory by default):

1. `./scripts/eosio_uninstall.sh` - Will uninstall eosio, yet leave dependencies (you can use --full to delete your data directory).
2. `./scripts/full_uninstaller.sh` - Will uninstall eosio and dependencies (can be forced; see script).

## Supported Operating Systems
EOSIO currently supports the following operating systems:  
1. Amazon Linux 2
2. CentOS 7
3. Ubuntu 16.04
4. Ubuntu 18.04
5. MacOS 10.14 (Mojave)

## Resources
1. [Website](https://eos.io)
1. [Blog](https://medium.com/eosio)
1. [Developer Portal](https://developers.eos.io)
1. [StackExchange for Q&A](https://eosio.stackexchange.com/)
1. [Community Telegram Group](https://t.me/EOSProject)
1. [Developer Telegram Group](https://t.me/joinchat/EaEnSUPktgfoI-XPfMYtcQ)
1. [White Paper](https://github.com/EOSIO/Documentation/blob/master/TechnicalWhitePaper.md)
1. [Roadmap](https://github.com/EOSIO/Documentation/blob/master/Roadmap.md)

<a name="gettingstarted"></a>
## Getting Started
Instructions detailing the process of getting the software, building it, running a simple test network that produces blocks, account creation and uploading a sample contract to the blockchain can be found in [Getting Started](https://developers.eos.io/eosio-home/docs) on the [EOSIO Developer Portal](https://developers.eos.io).

## Contributing

[Contributing Guide](./CONTRIBUTING.md)

[Code of Conduct](./CONTRIBUTING.md#conduct)

## License

[MIT](./LICENSE)

## Important

See LICENSE for copyright and license terms.  Block.one makes its contribution on a voluntary basis as a member of the EOSIO community and is not responsible for ensuring the overall performance of the software or any related applications.  We make no representation, warranty, guarantee or undertaking in respect of the software or any related documentation, whether expressed or implied, including but not limited to the warranties or merchantability, fitness for a particular purpose and noninfringement. In no event shall we be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or documentation or the use or other dealings in the software or documentation.  Any test results or performance figures are indicative and will not reflect performance under all conditions.  Any reference to any third party or third-party product, service or other resource is not an endorsement or recommendation by Block.one.  We are not responsible, and disclaim any and all responsibility and liability, for your use of or reliance on any of these resources. Third-party resources may be updated, changed or terminated at any time, so the information here may be out of date or inaccurate.

# REM development flow

![PlantUML model](http://www.plantuml.com/plantuml/png/nLFDQjj04BxhAORaqFOWAqwWnAQ4XDI67ag2qz9ZM4aZQV7kZhex6zjltv6qu9h-v5Ae3vQqy_rypCpU1bQUepNP6_ZIwG0nO0tQmMPrz_7pQcPhAGH4w9Zxi2mAmLTRUa7V6DhDAhB5zuY1DRbGN5rUNbozdryK7UrofbmxnjOhnbmCybeh-R11ZgNMQZQgpCaFRrqinKPOm2Jc0Jq33sbwNN7q20FbfqYgOl9mjjepUgSCt9DZhyiefsUW0gpkuNonMAyNYwnNddMbU-KOpf22faB-tteqg08MyzdrRFzk8ZqypQ_Xt6Fz3qWUhKKLkViJSPEOHhSTboRYt_dsTn9tWq3h4Tqhv0OLHv_8pwLNhkgUB-P9PZs_VeLlLM3q2JvzP8uOOLY4CKS6ylk6CAuJrFY2XdgBeXQ3TkrO5Z4O4y2K09IheKUlgTQLCkOmelfe33HwZo53gGysHw_KjX7uT70Lrb1HVu2TvawWK7NAjHZ6-jSWLIQe2JoMAY1G0yTEJb6E7jdOplncM9ubDEItSDA7B4tiGvw6leH7YLeynj2bl0b1-GrDmrd2Pd9MhT8kC1Z5A8-UjEFHy0XU3dPGaRMQ0wY6qQVSGxHaV9zSfJ9SEz5OZw6JtKdjFmTEoBGkeXnObGOdgGI4NtSfdQHrsYBswPfzUZXHc6PC3XBXECTRUOtM_000)
