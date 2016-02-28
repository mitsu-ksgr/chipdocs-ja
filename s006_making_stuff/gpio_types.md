## GPIO Types
There are many types of sensors that can be used with GPIO:

### Switches
Switches provide on/off state input from the physical world to your computer. You can [use the commandline interface](#some-gpio-switch-action) to listen to switch values. A python library was created for the [ChippyRuxpin project](https://github.com/NextThingCo/ChippyRuxpin) if you need a higher-level example in python. 

### LEDs
LEDs can be illuminated and turned off using the [commandline interface](#some-gpio-output). Refer to the [ChippyRuxpin project](https://github.com/NextThingCo/ChippyRuxpin) on a good example on how to manipulate the commandline using python.

### Relays
Relays are special hardware bridges used to switch higher voltage electronics, protecting CHIP from the high voltages that would destroy it.  Using a relay board is programmatically no different from using switches.

