## For Ubuntu 14.4

  * Open a terminal and type `sudo apt-get update && sudo apt-get upgrade`. Hit enter to execute the command. This updates the debian package repositories and upgrades your system to reflect any package changes.

![apt-get commands in terminal](images/repair_apt.jpg)

  * Download the repair tool [here](http://opensource.nextthing.co/chip-boot-repair.deb).
  * Double-click on the repair tool icon and follow the Ubuntu software install process. Once the install finishes, use the Ubuntu search tool to find the CHIP boot repair application.

![Search for the app](images/repair_search.jpg)

  * Follow the onscreen messages to complete the repair process.

![Waiting for FEL](images/repair_wait.jpg)

  * Grab a paper clip (or jumper wire. Heck a stripped metal twist tie works) and bend it so one end fits in the FEL pin (U14 - pin 7) and the other end fits in the GND pin (U14 - pin 39). If it don't fit, don't force it! You will need a skinny gauge paper-clip: if it's too thick and you're too assertive, it may damage the header.

![FEL the board](images/repair_FEL_the_Board.jpg)

 * Connect C.H.I.P. to your computer using a standard-USB to USB-micro cable.


![CHIP to laptop](images/repair_CHIP_to_Laptop.jpg)

 * As soon as the repair tool software detects that CHIP is in FEL mode and connected by USB, the application begins the repair process.

![FEL Mode](images/repair_CHIP_in_FEL_Mode.jpg)

 * The repair takes mere seconds.

![CHIP fixed](images/repair_CHIP_Repair_Complete.jpg)

 * Congratulations, your C.H.I.P. is now repaired. \\(•◡•)//

