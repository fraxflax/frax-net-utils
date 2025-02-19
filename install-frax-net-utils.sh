#!/bin/sh
command -v id >/dev/null 2>&1 || { printf 'Error: "id" not in PATH!\n' ; exit 1 ;}
[ $(id -u) -eq 0 ] || { printf '"%s" must be run as root!\n' "$0" ; exit 1 ;}
for x in curl chmod; do
  command -v $x >/dev/null 2>&1 || { printf 'Error: %s is not installed!\n' $x ; exit 1 ;}
done

printf 'Installing frax-net-utils...\n'
for x in update-frax-net-utils.sh uninstall-frax-net-utils.sh pingarp pingsweep; do
    printf '* %s ... ' "$x"
    curl -fso /usr/local/bin/$x https://raw.githubusercontent.com/fraxflax/frax-net-utils/refs/heads/main/$x >/dev/null 2>&1 || {
	printf 'download failed!\n'
	continue
    }
    chmod 2755 /usr/local/bin/$x >/dev/null 2>&1 || {
	printf 'chmod failed!\n'
	continue
    }
    printf 'success!\n'
done
