## Settings and Configuration
Most of the settings for the computer and for the desktop can be set using the apps in the "Computer Things" menu. Select the appropriate app from either the Settings Menu or the Settings Manager.

![Screenshot of GUI showing where to change WiFi settings](images/screen_settingsmenu.jpg)

![Screenshot of GUI showing where to change WiFi settings](images/screen_settingsmgr.jpg)

### WiFi

Connecting to a WiFi network is easy using the WiFi icon the top right system tray. Just select a network to initiate a connection. If you need a password, you'll be prompted for it.

![Select a wireless connection access point](images/screen_wifisettings.jpg)

If you need more control and information over your network connection, use the Settings->Network Connections panel to show your connections. Double click on a connection to bring up the connection editor:

![Network connection editor](images/screen_networksettings.jpg)

### Bluetooth
Bluetooth device setup can be accessed using the Bluetooth icon in the top right system tray.

![Bluetooth settings menu](images/screen_btsettings.jpg)

When you begin a connection, you'll be guided through the necessary steps to connect to your device. For example, when you pair with a keyboard, you'll often be prompted for a code to enter to ensure a unique connection. Once you have paired a device, future connections will usually be automatic when the devices are in range and powered up.

![Bluetooth settings menu](images/screen_btsetup01.jpg)

You can manage, and also connect to, your devices using the the Bluetooth Devices panel, accessed from the Bluetooth system tray:

![Bluetooth devices panel](images/screen_btdevices.jpg)

### Sound
By default sound output comes from the built-in connector, served by the "sunxi codec" driver. If you want to change the volume, you can use the volume control in the top right system tray:

![Desktop volume control](images/screen_volumectl.jpg)

Or, open the Audio Mixer in the Multimedia category:

![Open Audio Mixer app in Multimedia category](images/screen_audiomixermenu.jpg)

Here, you can select the "Playback" category to change the volume:

![Control panel for sound](images/screen_audiosettings03.jpg)

If you don't see that control, just click on the "Select Controls" button and enable all controls:

![Enable all controls for audio mixer](images/screen_audiosettings02.jpg)

### Display
Use the Settings->Display control panel to adjust the monitor's resolution and rotation settings:

If you want to customize the desktop image, icons, colors, and fonts, there are two different panels. The Appearance panel lets you select a theme to make instant changes for several properties.

![Change monitor settings with the Display control panel](images/screen_desktopsettings04.jpg)

The Desktop panel lets you customize images and colors, along with the behavior of menus.

![Change desktop look with Desktop panel](images/screen_desktopsettings01.jpg)

If you want to change the theme or the icon sets, you can search for these using the [Synaptic Package Manager](#synaptic-package-manager). Search for `gtk2 themes` or `icon sets`. There are also packages that can make it easy to find and configure themes, such as `gtk-theme-config.` Similarly you can use the command line to search packages with `apt-cache search gtk2 theme`.

### Time and Date
Set the Time with the Orage Globaltime panel. This can be found in Accessories->Orage Globaltime or in Office->Orage Globaltime. Simply click the time to bring up the preferences panel. You can quickly view the date from the Orage Calendar in the Office menu.

![Orage Globaltime is used to set the time and date](images/screencap_timesettings.jpg)

### Mouse Sensitivity
Mouse sensitivity is set for the default 640x480 resolution. If you are using CHIP with a higher resolution monitor, you may want to adjust the sensitivity of the mouse. You can get to the Mouse settings panel from **Computer Things->Settings->Mouse and Touchpad**

![Screenshot of mouse configuration panel](images/screen_mousepanel.jpg)

### Language and Location
CHIP's operating system comes with a default language of English. You can change the language and the location, but you'll need to use the terminal to do so. Use the "Computer Things!" menu to launch the Terminal Emulator. 
Then use the [`apt-get`](#apt-get) command to install the language packs and run a simple program to configure your language and location:

```shell
sudo apt-get install locales
sudo dpkg-reconfigure locales
```
![Orage Globaltime is used to set the time and date](images/screen_locales02.jpg)

