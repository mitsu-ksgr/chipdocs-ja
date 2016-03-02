## 設定と構成
> ### Settings and Configuration
> Most of the settings for the computer and for the desktop can be set using the apps in the "Computer Things" menu.
> Select the appropriate app from either the Settings Menu or the Settings Manager.

コンピュータやデスクトップに関する設定のほとんどは、**Computer Things**メニューのアプリを使用して行えます。
設定メニューか設定マネージャの何れかから適切なアプリを選択します。

![Screenshot of GUI showing where to change WiFi settings](./../images/screen_settingsmenu.jpg)

![Screenshot of GUI showing where to change WiFi settings](./../images/screen_settingsmgr.jpg)


### WiFi
> #### WiFi
> Connecting to a WiFi network is easy using the WiFi icon the top right system tray.
> Just select a network to initiate a connection.
> If you need a password, you'll be prompted for it.

WiFiネットワークに接続するには、右上のシステムトレイにある無線LANアイコンを使うと簡単です。
接続を開始したいネットワークを選択するだけです。
パスワードが必要な場合は、それを求めるメッセージが表示されます。

![Select a wireless connection access point](./../images/screen_wifisettings.jpg)

> If you need more control and information over your network connection, use the Settings->Network Connections panel to show your connections.
> Double click on a connection to bring up the connection editor:

ネットワーク接続をより詳細に制御するために情報が必要な場合は、[設定]>[ネットワーク接続]パネルで表示できます。
接続先をダブルクリックして、コネクション・エディタを表示します。

![Network connection editor](./../images/screen_networksettings.jpg)


### Bluetooth
> #### Bluetooth
> Bluetooth device setup can be accessed using the Bluetooth icon in the top right system tray.

Bluetooth機器のセットアップには、右上のシステムトレイにあるBluetoothアイコンを使ってアクセスできます。

![Bluetooth settings menu](./../images/screen_btsettings.jpg)

> When you begin a connection, you'll be guided through the necessary steps to connect to your device.
> For example, when you pair with a keyboard, you'll often be prompted for a code to enter to ensure a unique connection.
> Once you have paired a device, future connections will usually be automatic when the devices are in range and powered up.

接続を開始すると、あたなのデバイスに接続するために必要な手順を案内してきます。
例えば、キーボードとペアリングするときは、多くの場合、ユニークな接続を確保するためのコード入力が求められます。
一度ペアリングしたデバイスは、次回以降Bluetoothの範囲内で電源を入れた時には自動で接続されます。

![Bluetooth settings menu](./../images/screen_btsetup01.jpg)

> You can manage, and also connect to, your devices using the the Bluetooth Devices panel, accessed from the Bluetooth system tray:

Bluetoothデバイスの管理や接続は、Bluetoothシステムトレイにある、Bluetoothデバイスパネルから行うことができます。

![Bluetooth devices panel](./../images/screen_btdevices.jpg)


### サウンド
> #### Sound
> By default sound output comes from the built-in connector, served by the "sunxi codec" driver.
> If you want to change the volume, you can use the volume control in the top right system tray:

デフォルトの音声出力は、"sunxi codec"ドライバにより提供される、組み込みのコネクタからきています。
音量を調整したい場合は、右上のシステムトレイにあるボリュームコントロールを使用できます。

![Desktop volume control](./../images/screen_volumectl.jpg)

> Or, open the Audio Mixer in the Multimedia category:

もしくは、マルチメディアカテゴリー内のオーディオミキサーを開きます。

![Open Audio Mixer app in Multimedia category](./../images/screen_audiomixermenu.jpg)

> Here, you can select the "Playback" category to change the volume:

ここの"Playback"カテゴリを選択すれば、音量を変更することができます。

![Control panel for sound](./../images/screen_audiosettings03.jpg)

> If you don't see that control, just click on the "Select Controls" button and enable all controls:

もしコントロールが表示されなければ、"Select Controls"ボタンをクリックし、全てのコントロールを有効にします。

![Enable all controls for audio mixer](./../images/screen_audiosettings02.jpg)


### ディスプレイ
> #### Display
> Use the Settings->Display control panel to adjust the monitor's resolution and rotation settings:
> 
> If you want to customize the desktop image, icons, colors, and fonts, there are two different panels.
> The Appearance panel lets you select a theme to make instant changes for several properties.

モニタの解像度とローテションの設定を調整するには、"Settings->Display"コントロールパネルを使用します。

デスクトップ画像、アイコン、色、フォントをカスタマイズしたい場合は、二つの異なるパネルがあります。
アピアランスパネルでは、いくつかのプロパティを即時変更するためにテーマを選択することができます。

![Change monitor settings with the Display control panel](./../images/screen_desktopsettings04.jpg)

> The Desktop panel lets you customize images and colors, along with the behavior of menus.

デスクトップパネルでは、メニューの動作と一緒に、画像や色をカスタマイズできます。

![Change desktop look with Desktop panel](./../images/screen_desktopsettings01.jpg)

> If you want to change the theme or the icon sets, you can search for these using the [Synaptic Package Manager](#synaptic-package-manager).
> Search for `gtk2 themes` or `icon sets`.
> There are also packages that can make it easy to find and configure themes, such as `gtk-theme-config.`
> Similarly you can use the command line to search packages with `apt-cache search gtk2 theme`.

テーマやアイコンセットを変更したい場合は、[Synaptic Package Manager](#synaptic-package-manager)を使用して、これらを検索することができます。
"gtk2 themes"と"icon sets"を検索します。
"gtk-theme-config"など、簡単にテーマを見つけて設定することができるパッケージもあります。
同様に、```apt-cache search gtk2 theme```とすることで、パッケージを検索するのにnoniコマンドラインを使用することができます。


### 日時
> #### Time and Date
> Set the Time with the Orage Globaltime panel.
> This can be found in Accessories->Orage Globaltime or in Office->Orage Globaltime.
> Simply click the time to bring up the preferences panel.
> You can quickly view the date from the Orage Calendar in the Office menu.

Orage Globaltimeパネルを使用して、時間を設定します。
これは"Accessories->Orage Globaltime"か"Office->Orage Globaltime"の中で見つけることができます。

![Orage Globaltime is used to set the time and date](./../images/screencap_timesettings.jpg)

### マウス感度
> ### Mouse Sensitivity
> Mouse sensitivity is set for the default 640x480 resolution.
> If you are using CHIP with a higher resolution monitor, you may want to adjust the sensitivity of the mouse.
> You can get to the Mouse settings panel from **Computer Things->Settings->Mouse and Touchpad**

マウス感度は、デフォルトの640x480の解像度で設定されています。
より高い解像度のモニタでCHIPを使用している場合は、**Computer Things->Settings->Mouse and Touchpad**のマウス設定パネルでマウスの感度を調整することができます。

![Screenshot of mouse configuration panel](./../images/screen_mousepanel.jpg)

### 言語と地域
> ### Language and Location
> CHIP's operating system comes with a default language of English.
> You can change the language and the location, but you'll need to use the terminal to do so.
> Use the "Computer Things!" menu to launch the Terminal Emulator.
> Then use the [`apt-get`](#apt-get) command to install the language packs and run a simple program to configure your language and location:

CHIPのオペレーティングシステムは、デフォルト言語として英語が付属されています。
あなたに合った言語と地域に変更することができますが、このように端末を使用する必要があります。
"Computer Things"メニューを使い、ターミナルエミュレータを起動します。
起動したら、[```apt-get```](http://docs.getchip.com/#apt-get)コマンドを使用して、言語パックをインストールし、お使いの言語と地域を設定するための簡単なプログラムを実行します。

```shell
sudo apt-get install locales
sudo dpkg-reconfigure locales
```

![Orage Globaltime is used to set the time and date](./../images/screen_locales02.jpg)

