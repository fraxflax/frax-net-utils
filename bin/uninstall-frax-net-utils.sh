command -v id >/dev/null 2>&1 || { printf 'Error: "id" not in PATH!\n' ; exit 1 ;}
[ $(id -u) -eq 0 ] || { printf '"%s" must be run as root!\n' "$0" ; exit 1 ;}
command -v rm >/dev/null 2>&1 || { printf 'Error: "rm" not in PATH!\n' ; exit 1 ;}
printf 'Uninstalling frax-net-utils...\n'
for x in pingarp pingsweep update-frax-net-utils.sh uninstall-frax-net-utils.sh; do
    printf '* %s ... ' "$x"
    [ -e /usr/local/bin/$x ] && {
	rm /usr/local/bin/$x >/dev/null 2>&1 || {
	    printf 'failed!\n'
	    continue
	}
    }
    printf 'removed!\n'
done
