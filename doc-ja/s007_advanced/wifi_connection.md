## WiFi Connection
Below are detailed instructions for connecting to Wi-Fi networks using two different command line protocols: `nmcli` and `connman`. If you are using the CHIP OS that comes installed on CHIP, or you have flashed with our Debian distribution, you'll want to use the first section about connecting with `nmcli`. If you have flashed CHIP with our buildroot OS, you'll need to use `connman`.

### Connecting C.H.I.P. to Wi-Fi with nmcli
There are several tools in Linux for connecting and configuring networks. We will be using the command nmcli (Network Manager Client). You may see other tutorials that reference iw or iwconfig, however, these tools are not recommended for C.H.I.P. You can read more about nmcli on the internet.

#### Requirements
You will need one of these scenarios:

  * CHIP with monitor and keyboard attached
  * [SSH or serial](#headless-chip) connection
  * Wireless access to internet
  * CHIP loaded with CHIP OS or Debian

#### Step 1: List available Wi-Fi networks
In the terminal, type

```shell
nmcli device wifi list
```

The output will list available access points

```shell
*  SSID      MODE   CHAN  RATE       SIGNAL  BARS  SECURITY  
*  NextThing HQ    Infra  11    54 Mbit/s  100     ▂▄▆█  --        
   NextThing Shop  Infra  6     54 Mbit/s  30      ▂___  WPA1 WPA2 
   2WIRE533        Infra  10    54 Mbit/s  44      ▂▄__  WPA1 WPA2 
```

#### Step 2: Connect to a network
You can connect to password -protected or open access points.
##### A: No Password
To connect to an open network with no password, use this command:

```shell
sudo nmcli device wifi connect '(your wifi network name/SSID)' ifname wlan0
```

These commands will respond with information about the connection.
##### B: Password Protected
To connect to a password protected network, use this command, inserting your own network name and password:

```shell
sudo nmcli device wifi connect '(your wifi network name/SSID)' password '(your wifi password)' ifname wlan0
```

#### Step 3: Test your Connection
You can verify and test your wireless network connection.
##### Verify
You can verify your connection using the command

```shell
nmcli device status
```

which outputs a list of the various network devices and their connections. For example, a successful connection would look like this:

```shell
DEVICE   TYPE      STATE         CONNECTION 
wlan0    wifi      connected     NextThing HQ   
wlan1    wifi      disconnected  --         
ip6tnl0  ip6tnl    unmanaged     --         
lo       loopback  unmanaged     --         
sit0     sit       unmanaged     --
```

Because it is worth knowing that Linux offers many ways of doing things, another command that shows your current active connection is

```shell
nmcli connection show --active
```

which outputs like so:

```shell
NAME  UUID                                  TYPE             DEVICE 
NTC   59962bac-3441-437b-94ea-bf31dee66e8f  802-11-wireless  wlan0 
```

After you have connected once, your C.H.I.P. will automatically connect to this network next time you reboot (or start NetworkManager services).

##### Test
Finally, you can test your connection to the internet with `ping`. Google's DNS server at the IP address 8.8.8.8 is probably the most reliable computer on the internet, so:

```shell
ping -c 4 8.8.8.8
```

results in output like:

```shell
64 bytes from 8.8.8.8: icmp_seq=1 ttl=55 time=297 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=55 time=26.3 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=55 time=24.8 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=55 time=55.7 ms
```

You can stop this command by pressing CTRL-C on your keyboard. The `-c 4` option means it will happen only 4 times.

Congratulations! You are now network with CHIP!

#### Step 4: Disconnecting and Forgetting Networks
The command to disconnect from a wireless device needs a few parameters:

```shell
sudo nmcli dev disconnect wlan0
```

You may want to prevent auto-connection to a network, so you can use this command to "forget" a network:

```shell
sudo nmcli connection delete id  (your wifi network name/SSID) 
```

#### Troubleshooting
Here are a few possible problems with connections.

##### No network found
Not much to say about that. If there's no network, you can't connect. Go find a network!

##### Incorrect password
If you type in the wrong password, you'll get some errors like this:

```shell
[32258.690000] RTL871X: rtw_set_802_11_connect(wlan0) fw_state=0x00000008
[32258.800000] RTL871X: start auth
[32263.720000] RTL871X: rtw_set_802_11_connect(wlan0) fw_state=0x00000008
[32263.820000] RTL871X: start auth
[32264.430000] RTL871X: auth success, start assoc
[32269.850000] RTL871X: rtw_set_802_11_connect(wlan0) fw_state=0x00000008
[32269.970000] RTL871X: start auth
Error: Timeout 90 sec expired.
```

Try connecting again with the correct password.

##### Failed ping
If you don't have access to the internet, your ping to an outside IP will fail. 
It is possible that you can connect to a wireless network, but have no access to the internet, so you'd see a connection when you request device status, but have a failed ping. This indicates a problem or restriction with the router or the access point, not a problem with the CHIP.

A failed ping looks something like:

```shell
From 192.168.2.56 icmp_seq=14 Destination Host Unreachable
From 192.168.2.56 icmp_seq=15 Destination Host Unreachable
From 192.168.2.56 icmp_seq=16 Destination Host Unreachable
18 packets transmitted, 0 received, +9 errors, 100% packet loss, time 17013ms
pipe 4
```

##### Loss of wireless network
A sudden, unplanned disconnection will post an error in the terminal window, for example:

```shell
[30863.880000] RTL871X: linked_status_chk(wlan0) disconnect or roaming
```

The Network Manager will periodically try to reconnect. If the access point is restored, you'll get something like this in your terminal window:

```shell
[31798.970000] RTL871X: rtw_set_802_11_connect(wlan0)
[31799.030000] RTL871X: start auth
[31799.040000] RTL871X: auth success, start assoc
[31799.050000] RTL871X: rtw_cfg80211_indicate_connect(wlan0) BSS not found !!
[31799.060000] RTL871X: assoc success
```

##### nmcli not installed error
If you try to use `nmcli` and you get an error that it is not found or is not a command, chances are that you are using the CHIP buildroot image. The `nmcli` commands only apply to CHIPs running CHIP OS or Debian linux.

### Connecting C.H.I.P. to a Wireless Network With connman
The buildroot operating system uses the `connman` command-line network manager to connect and manage your network connections. If you are using CHIP OS (or Debian), you will find that `connman` is not installed - you'll need to [use  nmcli](#connecting-c-h-i-p-to-wi-fi-with-nmcli).

If you want all the details of `connman` [visit the ArchLinux wiki.](https://wiki.archlinux.org/index.php/Connman)

#### Requirements
  * CHIP running buildroot OS
  * One of the following:
    * Keyboard and monitor for CHIP
    * [Serial connection](#headless-chip) to CHIP

#### Step 1: Enable WiFi and Find a Network

These three commands will, in turn, enable wifi, scan for access points, and see what networks are available:

```shell
  connmanctl enable wifi
  connmanctl scan wifi
  connmanctl services
```
  
The `services` command has output similar to:

```shell
*AO 
    NTC                  wifi_7cc70905cd77_4e5443_managed_psk
                         wifi_7cc70905cd77_hidden_managed_psk
    NTC Guest            wifi_7cc70905cd77_4e5443204775657374_managed_psk
                         wifi_7cc70905cd77_hidden_managed_none
    ATT312               wifi_7cc70905cd77_415454333132_managed_psk
    HP-Print-99-LaserJet 1102 wifi_7cc70905cd77_48502d5072696e742d39392d4c617365724a65742031313032_managed_none
    ATT344               wifi_7cc70905cd77_415454333434_managed_psk
    CBCI-1B57-2.4        wifi_7cc70905cd77_434243492d314235372d322e34_managed_psk
    mi-fi                wifi_7cc70905cd77_6d692d6669_managed_none
    0024A5D8CF33         wifi_7cc70905cd77_303032344135443843463333_managed_psk
    Twirl-Eco-Events-2.4 wifi_7cc70905cd77_547769726c2d45636f2d4576656e74732d322e34_managed_psk
    xfinitywifi          wifi_7cc70905cd77_7866696e69747977696669_managed_none
```

#### Step 2: Connect To An Access Point
Unfortunately, connman doesn't use the nice name on the left of the services list. It wants the unfriendly string on the right, so you'll want to get copy and paste ready.
##### A: No Password
For example, to connect to NTC Guest, which has no password, `services` shows two choices. We want the one without “hidden” in the string. Use the connect command to connect:

```shell
  connmanctl connect wifi_7cc70905cd77_4e5443204775657374_managed_psk
```

If your network is not password protected, you'll get some output that will indicate a successful connection, such as:

```shell
[  961.780000] RTL871X: rtw_set_802_11_connect(wlan0)  fw_state=0x00000008
[  962.070000] RTL871X: start auth
[  962.080000] RTL871X: auth success, start assoc
[  962.090000] RTL871X: rtw_cfg80211_indicate_connect(wlan0) BSS not found !!
[  962.100000] RTL871X: assoc success
[  962.110000] RTL871X: send eapol packet
[  962.290000] RTL871X: send eapol packet
[  962.300000] RTL871X: set pairwise key camid:4, addr:0a:18:d6:97:2d:26, kid:0, type:AES
[  962.320000] RTL871X: set group key camid:5, addr:0a:18:d6:97:2d:26, kid:1, type:AES
```

If your network is password protected, you'll get an error.

##### B: Password-Protected
To deal with passwords, you'll need to put `connman` into interactive mode:

```shell
  connmanctl
```

which gives a connmanctl prompt:

```shell
  connmanctl>
```

In the shell, turn the 'agent' on so it can process password requests:

```shell
  agent on
```

and now use the connect command (your network name will be different than what's below of course)

```shell
  connect wifi_7cc70905cd77_4e5443_managed_psk
```

and enter your password when prompted:

```shell
  Agent RequestInput wifi_7cc70905cd77_4e5443_managed_psk
  Passphrase = [ Type=psk, Requirement=mandatory ]
  Passphrase?
```

Now that you are connected to a wireless network, you can exit connmanctl interactive mode by typing

```shell
  quit
```

###### All The Commands In One Place
Here's all the commands in one place:

```shell
  connmanctl
  agent on
  connect wifi_7cc70905cd77_4e5443_managed_psk
  quit
```

#### Step 3: Test Connection
In CHIP's command line, you can ping Google four times:

```shell
  ping -c 4 8.8.8.8
```

and expect ping to output some timing messages like:

```shell
PING 8.8.8.8 (8.8.8.8): 56 data bytes
64 bytes from 8.8.8.8: seq=0 ttl=55 time=209.147 ms
64 bytes from 8.8.8.8: seq=1 ttl=55 time=111.125 ms
64 bytes from 8.8.8.8: seq=2 ttl=55 time=183.627 ms
64 bytes from 8.8.8.8: seq=3 ttl=55 time=147.398 ms
--- 8.8.8.8 ping statistics ---
4 packets transmitted, 4 packets received, 0% packet loss
round-trip min/avg/max = 111.125/162.824/209.147 ms
```

If your connection is not successful, then ping will tell you your network is down:

```shell
PING 8.8.8.8 (8.8.8.8): 56 data bytes
ping: sendto: Network is unreachable
```

##### Troubleshooting Connection Problems
  * You'll need to make sure you used the right network when you used the connect commnand. 
  * Review any messages that the connect commnand gave you. Did they look like the examples of a successful connection? 
  * If everything checked out until you got to `ping`, there's a good chance the problem is with your router or connection to the internet.

##### connman not installed error
If you try to use `connman` and you get an error that it is not found or is not a command, chances are that you are using the CHIP OS or Debian image. The `connman` commands only apply to CHIPs running the simple buildroot OS.

#### Step 4: Disconnecting And Forgetting Networks
To disconnect from your network, you might first want a reminder of what unfriendly string is used to describe your access point, so type:

```shell
  connmanctl services
```

which will output information about your current link:

```shell
  *AO NTC                  wifi_7cc70905cd77_4e5443_managed_psk
```

Use the ID to disconnect:

```shell
  connmanctl disconnect wifi_7cc70905cd77_4e5443_managed_psk
```

and you'll get some status like this:

```shell
[  301.890000] RTL871X: clear key for addr:0a:18:d6:97:2d:26, camid:4
[  301.900000] RTL871X: clear key for addr:0a:18:d6:97:2d:26, camid:5
[  301.920000] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
Disconnected wifi_7cc70905cd77_4e5443_managed_psk
```

Generally, `conman` will remember and cache setup information - if you reboot in the vicinity of a known network, it will attempt to connect. However, if you need to forget a network setup, these setups can be found by navigating:

```shell
  cd /var/lib/connman/
```

You can delete a single connection by seeing what connections are stored

```shell
  ls /var/lib/connman/
```

and then delete a setup that you find, for example

```shell
  rm -r wifi_7cc70905cd77_4e5443_managed_psk
```

You can delete all the “wifi” directories with

```shell
  rm -r wifi*
```

(the `-r` is needed because these are directories you are deleting, and the star at the end of `wifi*` assumes your configurations all start with the string “wifi”)

#### For Advanced Users
It's worth noting that you'll see two wireless networking interfaces if you list them with

```shell
  ifconfig
```

`connman` is configured to see only the physical interface wlan0 which simplifies setup. We do this with a blacklist, which can be modified at `/etc/connman/main.conf`

