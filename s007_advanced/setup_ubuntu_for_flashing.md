## Setup Ubuntu For Flashing
If you are running Ubuntu OS on your computer, and don't want to bother with a virtual machine, you can flash CHIP from your real computer. A generous member of our forums created a script that duplicates the below steps in a convenient package. You can get it [from github](https://github.com/techgeeksid/chip-Flash-tool). Please note that this is not supported or maintained by Next Thing - we only link to it here for your potential convenience.

### Requirements
  * Computer running Ubuntu 14.04+
  * Jumper wire
  * CHIP

### Install Dependencies
Install some tools:

```shell
sudo apt-get update
sudo apt-get install u-boot-tools android-tools-fastboot git build-essential curl android-tools-fsutils libusb-1.0-0-dev pkg-config
```

If you get an error that "the repository android-tools-fastboot can't be found", you are probably booting from an Ubuntu Live CD (or USB stick). You'll need to add a repository so you can install the android-tools-fastboot:

```shell
sudo add-apt-repository universe && sudo apt-get update
sudo apt-get install u-boot-tools android-tools-fastboot git build-essential curl android-tools-fsutils libusb-1.0-0-dev pkg-config
```

If you intend to customize buildroot with additional software, install these packages:

```shell
  sudo apt-get install libncurses5-dev libc6-i386 lib32stdc++6 lib32z1
```

Get and make the fel tools:

```shell
git clone http://github.com/NextThingCo/sunxi-tools
cd sunxi-tools
make
sudo rm -f /usr/local/bin/fel
sudo ln -s $PWD/fel /usr/local/bin/fel
```

Clone the CHIP-tools repository

```shell
cd .. 
git clone http://github.com/NextThingCo/CHIP-tools 
cd CHIP-tools
```

If you have already cloned the CHIP-tools from a previous CHIP flashing, you can, of course, just update your existing repository

```shell
cd CHIP-tools
git pull http://github.com/NextThingCo/CHIP-tools
```

Now you are ready to [flash CHIP](#flash-chip-firmware) with firmware.

#### All The Commands At Once
Here's all the commands in one place:

```shell
sudo apt-get update
sudo apt-get install u-boot-tools android-tools-fastboot git build-essential libusb-1.0-0-dev libncurses5-dev libc6-i386 lib32stdc++6 lib32z1 android-tools-fsutils
git clone http://github.com/NextThingCo/sunxi-tools
cd sunxi-tools
make
sudo rm -f /usr/local/bin/fel
sudo ln -s $PWD/fel /usr/local/bin/fel
cd .. 
git clone http://github.com/NextThingCo/CHIP-tools 
cd CHIP-tools
```

