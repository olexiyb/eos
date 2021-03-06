#!/bin/bash
##########################################################################
# This is the EOSIO automated install script for Linux and Mac OS.
# This file was downloaded from https://github.com/EOSIO/eos
#
# Copyright (c) 2017, Respective Authors all rights reserved.
#
# After June 1, 2018 this software is available under the following terms:
#
# The MIT License
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# https://github.com/EOSIO/eos/blob/master/LICENSE.txt
##########################################################################

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_ROOT="${SCRIPT_DIR}/.."
BUILD_DIR="${REPO_ROOT}/build"

txtbld=$(tput bold)
bldred=${txtbld}$(tput setaf 1)
txtrst=$(tput sgr0)

if [ ! -d $BUILD_DIR ]; then
   printf "\\nError, eosio_build.sh has not ran.  Please run ./eosio_build.sh first!\\n\\n"
   exit -1
fi

if ! pushd "${BUILD_DIR}" &> /dev/null;then
   printf "Unable to enter build directory %s.\\n Exiting now.\\n" "${BUILD_DIR}"
   exit 1;
fi

CMAKE_INSTALL_PREFIX=$(grep ^CMAKE_INSTALL_PREFIX: CMakeCache.txt | sed 's/.*=//')

if ! make install; then
   printf "\\nMAKE installing EOSIO has exited with the above error.\\n\\n"
   exit -1
fi
popd &> /dev/null

printf "\n${bldred}      ___           ___           ___                       ___\n"
printf "     /  /\\         /  /\\         /  /\\        ___          /  /\\ \n"
printf "    /  /:/_       /  /::\\       /  /:/_      /  /\\        /  /::\\ \n"
printf "   /  /:/ /\\     /  /:/\\:\\     /  /:/ /\\    /  /:/       /  /:/\\:\\ \n"
printf "  /  /:/ /:/_   /  /:/  \\:\\   /  /:/ /::\\  /__/::\\      /  /:/  \\:\\ \n"
printf " /__/:/ /:/ /\\ /__/:/ \\__\\:\\ /__/:/ /:/\\:\\ \\__\\/\\:\\__  /__/:/ \\__\\:\\ \n"
printf " \\  \\:\\/:/ /:/ \\  \\:\\ /  /:/ \\  \\:\\/:/~/:/    \\  \\:\\/\\ \\  \\:\\ /  /:/ \n"
printf "  \\  \\::/ /:/   \\  \\:\\  /:/   \\  \\::/ /:/      \\__\\::/  \\  \\:\\  /:/ \n"
printf "   \\  \\:\\/:/     \\  \\:\\/:/     \\__\\/ /:/       /__/:/    \\  \\:\\/:/ \n"
printf "    \\  \\::/       \\  \\::/        /__/:/        \\__\\/      \\  \\::/ \n"
printf "     \\__\\/         \\__\\/         \\__\\/                     \\__\\/ \n\n${txtrst}"

printf "==============================================================================================\\n"
printf "EOSIO has been installed into ${CMAKE_INSTALL_PREFIX}/bin!\\n"
printf "If you need to, you can uninstall using: ./scripts/full_uninstaller.sh (it will leave your data directory).\\n"
printf "==============================================================================================\\n\\n"

printf "EOSIO website: https://eos.io\\n"
printf "EOSIO resources: https://eos.io/resources/\\n"
printf "EOSIO Stack Exchange: https://eosio.stackexchange.com\\n"
