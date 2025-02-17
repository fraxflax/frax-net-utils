# frax-net-utils
Collection of useful network utilities:

* [pingarp](https://raw.githubusercontent.com/fraxflax/frax-net-utils/refs/heads/main/pingarp)<br>
  
  pingarp [ -d ] [ --lladdr ] HOSTNAME | ADDRESS<br>

  pings an host and waits for the arp cache to get updated before printing the resulting arp-cache info
  
  `--lladdr` to only print the HW (MAC) address<br>
  `-d` to show ping result and progress waiting for arp cache to get updated
  
* [pingsweep](https://raw.githubusercontent.com/fraxflax/frax-net-utils/refs/heads/main/pingsweep)<br>
  
  pingsweep [ OPTIONS ]  CIDR1 [ CIDR2 ...  CIDRN ]<br>

  ping all hosts in the provided CIDR(s) to check which hosts are up
  
  `--sort` | `-s` to sort the output<br>
  `--arp` | `-a` to check arp cache upon no ping reply from host in local subnet<br>
  `--verbose` | `-v` outputs result for every address checked and if it was

--

Also check out https://github.com/fraxflax/nw-watchdog for a higly configurable network watchdog.

--

This is free software written by Fredrik Ax &lt;nw-watchdog@axnet.nu&gt;. <br>
Feel free to modify and/or (re)distribute it in any way you like. <br>
... it's always nice to be mentioned though ;-)
