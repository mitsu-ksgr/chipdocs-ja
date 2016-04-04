## 物理コネクタ

> ### Physical Connectors
> CHIP is loaded with essential connectors for USB, serial, audio, video, and loads of IO on the pin headers. Oh, and a button too!

CHIPは、USB、シリアル、オーディオ、ビデオ、そしてピンヘッダ上にあるたくさんのIOのために必要なコネクタをロードします。あ、ボタンもね！

### ボタン
> #### Button
> There is a tiny tiny button on CHIP next to pin header U13 that is used for turning CHIP on or off.
> If CHIP is off and connected to a power source, hold down the button for one second to power it up.
> To turn CHIP off (rather brutally), hold the button for 10 seconds.
> We recommend using the operating system to power CHIP off, but if you need to, you can use this button.

U13ピンヘッダに接しているCHIP上の小さな小さなボタンは、CHIPのON/OFFを切り替えるために使われます。
CHIPがオフの状態で電源に接続されているとき、ボタンを１秒間押し続けることで、電源オンにすることが出来ます。
CHIPをオフにするには（どちらかと言えば悪い方法だけど）、ボタンを10秒間押し続けます。
OSを介してCHIPの電源を切る事をオススメしますが、そうする必要がある場合は、このボタンを使うことが出来ます。

### USB
> #### USB
> The single USB port on CHIP is USB 2.0 compatible.
> It can provide up to 500mA of current, as is standard for USB ports on computers.
> If you need to provide more current, we recommend a powered USB hub. 

CHIP上にあるただ１つのUSBポートは、USB 2.0の互換性があります。
それは500mAの電流を提供することができ、コンピュータ上のUSBポートの標準になります。
より多くの電流を供給する必要がある場合は、電源付きUSBハブを使用することをお勧めします。

### USB On The Go
> #### USB On The Go
> The micro USB port is generally used to provide power for CHIP.
> However, since CHIP can be powered through the pin headers or a battery, this port can be used for different things. 
> By default, connecting CHIP's micro USB to a computer will create a USB Serial connection, so you can access CHIP with a `screen` or `cu` session in a terminal.
> With Linux kernel modifications, it is possible to enable other modes, such as an Ethernet bridge.

マイクロUSBポートは、一般的にCHIPに電力を供給するために使用されます。
しかしながらCHIPは、ピンヘッダやバッテリーを介して電力を供給することが出来るため、このポートは、別のモノのために使用することもできます。
USBシリアル接続をが出来るコンピュータに、チップのマイクロUSBを接続し、ターミナルで`screen`または`cu`セッションを使用すれば、CHIPにアクセス出来ます。
Linuxカーネルを変更することで、イーサネット・ブリッジなどの他のモードを有効にすることが可能です。


### コンポジット・ビデオとステレオ・オーディオ
> #### Composite Video and Stereo Audio
> The 1/8" [TRRS connector](#about-the-trrs-connector) provides composite video and stereo audio output.
> Headphones can be plugged in for audio only.
> 
> Audio Input uses the same connection on the TRRS connector as the composite video signal.
> If you want to make audio input active on the TRRS connector, you need to [cut a circuit board trace](#microphone-and-audio-input).
> This is not as permanent as it sounds, as it is easy to re-enable composite video out with a small amount of soldering.

3.5mm(1/8")の[TRRSコネクタ](http://docs.getchip.com/#about-the-trrs-connector)は、コンポジット・ビデオとステレオ・オーディオ出力を提供します。
ヘッドフォンは、音声のみのために接続することができます。

音声入力は、コンポジットビデオ信号としてのTRRSコネクタと同じ接続を使用します。
TRRSコネクタの音声入力を有効にしたい場合は、[回路基板トレースを切断](http://docs.getchip.com/#microphone-and-audio-input)する必要があります。
これは言うほど永続的なものではなく、少し半田付けするだけで、簡単にコンポジット・ビデオ出力を再度有効にすることが出来ます。



### ピンヘッダ
> #### Pin Headers
> The Pin Headers provide a massive amount of connectivity, making CHIP a suitable platform for product development for physical computing and "internet of things" devices.
> Here's a basic diagram that labels all the pins:

ピンヘッダは、膨大な量の接続性を提供しており、フィジカルコンピューティングの製品開発やIoTデバイスに適したプラットフォームとして、CHIPを構成しています。  
以下は、全ピンのラベルを表した基本図です: 

![CHIP pinout](./../images/chip_pinouts.jpg)

U13L | U13R | U14L | U14R
------|------|------|------
GND : ground | CHG-IN : 5V input (power and battery charge) | GND : ground | VCC-5V : 5V power
VCC-5V : 5V power | GND : ground | UART1-TX : UART serial transmit | HPL : audio out left
VCC-3V3 : 3V power | TS : analog temperature sensor input | UART1-RX : UART serial receive | HPCOM : audio out common ground
VCC-1V8 : 1.8 V power | BAT : LiPo battery | FEL : "fel mode": connect to ground to put CHIP in fel mode for firmware | HPR : audio out right
TWI1-SDA : two-wire serial bus 1 | PWRON : power on | VCC-3V3 : 3 volt power | MICM : mic mute
TWI1-SCK : two-wire serial bus 1 | GND : ground | LRADC : low-res Analog-Digital Converter | MICIN1 : audio in
X1 : Resistive touchpanel input (touchscreen) | X2 : Resistive touchpanel input (touchscreen) | XIO-P0 : expander GPIO | XIO-P1 : expander GPIO pin 1
Y1 : Resistive touchpanel input | Y2 : Resistive touchpanel input (touchscreen) | XIO-P2 : expander GPIO pin 2 | XIO-P3 : expander GPIO pin 3
LCD-D2 : RGB666 data | PWM0 : pulse width modulation (also used for LCD backlight dimming) | XIO-P4 : expander GPIO pi | XIO-P5 : expander GPIO pin 5
LCD-D4 : RGB666 data | LCD-D3 : RGB666 data | XIO-P6 : expander GPIO pin 6 | XIO-P7 : expander GPIO pin 7
LCD-D6 : RGB666 data | LCD-D5 : RGB666 data | GND : ground | GND : ground
LCD-D10 : RGB666 data | LCD-D7 : RGB666 data | AP-EINT1 : Application Processor Interrupt  | AP-EINT3 : Application Processor Interrupt pin, necessary for certain kinds of hardware-software interactions (keyboard expander, etc.)
LCD-D12 : RGB666 data | LCD-D11 : RGB666 data | TWI2-SDA : two-wire serial bus 2 (I2C) | TWI2-SCK(*) : two-wire serial bus 2 (I2C)
LCD-D14 : RGB666 data | LCD-D13 : RGB666 data | CSIPCK : CMOS serial interface | CSICK : CMOS serial interface, can be used for attaching a serial camera sensor
LCD-D18 : RGB666 data | LCD-D15 : RGB666 data | CSIHSYNC : CMOS serial interface | CSIVSYNC : CMOS sync
LCD-D20 : RGB666 data | LCD-D19 : RGB666 data | CSID0 : CMOS serial interface | CSID1 : CMOS serial interface
LCD-D22 : RGB666 data | LCD-D21 : RGB666 data  | CSID2 : CMOS serial interface | CSID3 : CMOS serial interface
LCD-CLK : RGB666 clock | LCD-D23 : RGB666 data | CSID4 : CMOS serial interface | CSID5 : CMOS serial interface
LCD-VSYNC : vertical sync for LCD screen | LCD-HSYNC : horizontal sync for LCD | CSID6 : CMOS serial interface | CSID7 : CMOS serial interface
GND : ground | LCD-DE : RGB666 data | GND : ground | GND : ground

> (*)The XIO GPIO pins are provided by an I2C Expander at address 0x38 on the TWI bus 2, as such, this address is not available on bus 2.

(*) XIO GPIOピンは、TWIバス2上のアドレス0x38でのI2Cエクスパンダにより提供されているので、それ自体では、このアドレスはバス2上では使用できません。

