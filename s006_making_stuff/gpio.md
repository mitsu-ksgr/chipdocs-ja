## GPIO
GPIO provides basic digital connections to the physical world to create physical products with CHIP. These pins can act as 'reads' or 'writes', for example, to sense switch positions or turn an LED on or off. 

CHIP's most easily available IO pins are the "XIO" pins on header U14. This is the "GPIO eXpander" that uses an I2C bus to create eight (8) convenient pins for GPIO. These use address `0x38` on the TWI bus 2. Other pins are available for GPIO if more than eight are needed.

### Read and Write From Command Line
CHIP has several General Purpose Input/Output (GPIO) pins available for you to build around. If you want to access them in a very primitive way, just to confirm their existence, here's some things to try.

### Requirements
  * CHIP
  * Jumper Wire
  * LED
  * SSH or serial connection to CHIP or
  * Monitor and keyboard

### How You See GPIO
There are eight (8) GPIO pins always available for connecting CHIP to the sense-able world. If you orient CHIP with the USB connector pointed up, you'll find the GPIO pins in the middle of the right header, U14, Pins 13-20, labeled XIO-P0 to P7: 

![Pinout diagram for CHIP](images/chip_pinouts.jpg)

### How The System Sees GPIO
There is a `sysfs` interface available for the GPIO. This just means you can access the GPIO states in a file-system-like manner. For example, you can reference XIO-P0 using this path:

```shell
  /sys/class/gpio/gpio408/
```

The number is somewhat unfortunate, since the `sysfs` names do not match the labels on our diagram! But is not too hard to translate. PinsXIO-P0 to P7 linearly map to gpio408 to gpio415.

### Some GPIO Switch Action
These lines of code will let us read values on pin XIO-P7. First, we tell the system we want to listen to this pin:

```shell
  sudo sh -c 'echo 415 > /sys/class/gpio/export'
```

View the mode of the pin. It should return “in”:

```shell
  cat /sys/class/gpio/gpio415/direction
```

Connect a jumper wire between Pin 20 (XIO-P7) and Pin 39 (GND). Now use this line of code to read the value:

```shell
  cat /sys/class/gpio/gpio415/value
```

### Some GPIO Output
You could also change the mode of a pin from “in” to “out”

```shell
  sudo sh -c 'echo out > /sys/class/gpio/gpio415/direction'
```

Now that it's in output mode, you can write a value to the pin:

```shell
  sudo sh -c 'echo 1 > /sys/class/gpio/gpio415/value'
```

If you attach an LED to the pin and ground, the LED will illuminate according to your control messages.

### Enough IO
When you are done experimenting, you can tell the system to stop listening to the gpio pin:

```shell
  sudo sh -c 'echo 415 > /sys/class/gpio/unexport'
```

### Learn More
You can learn more about GPIO and Linux [here:](https://www.kernel.org/doc/Documentation/gpio/sysfs.txt)


