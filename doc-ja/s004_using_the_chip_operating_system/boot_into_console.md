## Boot into Console
If you want want CHIP to boot directly into a console, and not load the Desktop or Window manager GUIs, there are a couple options.
For the temporary case, you can open a terminal window and use the command 

```shell
sudo systemctl set-default multi-user.target
```

Next time you boot CHIP, it will not load the desktop or window environment, leaving you with command-line operation only.
If you wanted to return to booting into the GUI, you can use this command before you reboot:

```shell
sudo systemctl set-default graphical.target
```

The other option is to run a linux distribution with no GUI installed. You may want to do this if you want to use commandline only and want to save some storage space. 
You can follow instructions to [flash CHIP](#flash-chip-firmware) with buildroot, or Debian (with no GUI).

