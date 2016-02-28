## I2C
I2C can be accessed through a `sysfs` protocol using the debian i2c-tools. In the terminal, use

```shell
sudo apt-get install i2c-tools
```

Note that the "XIO GPIO" pins are provided by an I2C expander at address 0x38 on the TWI bus 2, so that address cannot be used on bus 2.

