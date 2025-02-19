#!/bin/sh
command -v id >/dev/null 2>&1 || { printf 'Error: "id" not in PATH!\n' ; exit 1 ;}
[ $(id -u) -eq 0 ] || { printf '"%s" must be run as root!\n' "$0" ; exit 1 ;}
command -v curl >/dev/null 2>&1 || { printf 'Error: curl is not installed!\n' ; exit 1 ;}
curl -s https://raw.githubusercontent.com/fraxflax/frax-net-utils/refs/heads/main/install-frax-net-utils.sh | sh
