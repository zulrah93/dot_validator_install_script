#!/usr/bin/env bash

#Disclaimer Messages:
echo "DISCLAIMER: This script is not officially endorsed by Parity. Please do not execute a script without knowing the risks or potential bugs within a script."
echo "Offical Resource: https://wiki.polkadot.network/docs/maintain-guides-how-to-validate-polkadot"

#Response gets stored in a bash variable ack
read -p "Are You Sure You Want To CONTINUE And Install A Polkadot Validator Node [Yes/N]: " confirm
echo "If You Want To Stop SomeWhere Along The Way You May CTRL-C But Note That Operations Are Not Atomic"
if [[ "${confirm}" == "Yes" ]]; then # You can change this to y or Y but it is much safer to let the script installer type out the full 'Yes' in case of accidently hitting a key
    echo "Installing Rust You May Cancel If It Is Already Installed On Your System."
    curl https://sh.rustup.rs -sSf | sh -s -- -y
    source $HOME/.cargo/env
    echo "Installing Necessary Dependencies For Building The Validator From Source"
    sudo apt install make clang pkg-config libssl-dev build-essential
else
    echo "You Chose Wisely. You Can Rerun The Script If You Are Confident In Taking That Risk."
fi



