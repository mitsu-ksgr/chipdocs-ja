## Install X-windows
If you want a windowed desktop on C.H.I.P., you can install X-Windows. 

### Requirements
  * CHIP [connected to WiFi](#connecting-c-h-i-p-to-wi-fi-with-nmcli)
  * Monitor attached to CHIP
  * Keyboard or [Serial or SSH Connection](#headless-chip) to CHIP

### Installation (xfce4)
CHIP is a lightweight computer, so we'll install the lightweight xfce4:

```shell
  sudo apt-get install xfce4
```

It might take some time to download and install all the packages, since there are a lot of dependencies and libraries involved. Once installed, start the windowing system with the command

```shell
  startx&
```

(the `&` runs Xwindows in the background, so you can still use your terminal). After a minute or so, you'll get an image on the monitor:

![Xwindows up and running on CHIP](images/xwindows_first.jpg)

Now you can use a mouse and keyboard to explore CHIP and launch programs.

### Troubleshooting

If you get errors from apt that report "unmet dependencies," you can run the command

```shell
sudo apt-get install -f
```

which will force installation of any alternate or missing dependencies of any installed packages.

