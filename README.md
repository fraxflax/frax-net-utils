# frax-net-utils
Collection of useful network utilities for Linux.

This is free software written by Fredrik Ax &lt;nw-watchdog@axnet.nu&gt;. <br>
Feel free to modify and/or (re)distribute it in any way you like. <br>
... it's always nice to be mentioned though ;-)

* **[pingarp](https://raw.githubusercontent.com/fraxflax/frax-net-utils/refs/heads/main/bin/pingarp)** [ -d ] [ --lladdr ] HOSTNAME | IPv4ADDRESS<br>

  pings an host and waits for the arp cache to get updated before printing the resulting arp-cache info
  
  `--lladdr` to only print the unique Link Local (hw/mac) Address(es)<br>
  `-d` to show ping result and progress waiting for arp cache to get updated
  
* **[pingsweep](https://raw.githubusercontent.com/fraxflax/frax-net-utils/refs/heads/main/bin/pingsweep)** [ OPTIONS ]  CIDR1 [ CIDR2 ...  CIDRN ]<br>

  parallell ping of all hosts in the provided CIDR(s) to check which hosts are up
  
  `--sort` | `-s` to sort the output<br>
  `--arp` | `-a` to check arp cache upon no ping reply from host in local subnet<br>
  `--verbose` | `-v` outputs detailed result for every address checked

---
**Installation:**<br>
Downloads the above listed scripts, as well as the updater and uninstaller, to /usr/local/bin and make them readable and executable for all users.
```
curl -s https://raw.githubusercontent.com/fraxflax/frax-net-utils/refs/heads/main/install-frax-net-utils.sh | sudo sh
```

Once installed:

To **update** to latest version run:
```
sudo update-frax-net-utils.sh
```

To **uninstall** run:
```
sudo uninstall-frax-net-utils.sh
```

---

Also check out **[nw-watchdog](https://github.com/fraxflax/nw-watchdog)** for a higly configurable network watchdog.

---

