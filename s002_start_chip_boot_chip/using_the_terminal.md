## ターミナルを使う
> Using The Terminal

> One of the great powers of Linux is the so-called "command-line."
> This simple text interface for computing unveils many of the gears and levers that make a computer tick.
> Many find it easier to get things done, as it is a focused and terse way to interact with the computer.

Linuxの偉大な力の一つは、いわゆる「コマンドライン(command-line)」です。
コンピュータを使うためにあるこのシンプルなテキスト・インターフェースは、コンピュータという時計を構成する歯車やレバーの多くの秘密を暴き出します。
多くは、物事を簡単に成し遂げるために、コンピュータと対話するための集中的かつ簡潔な方法として見つかるでしょう。

> When you first use the Terminal Emulator program,
> you may quickly find that you do not have permission to do something.
> That is because many commands are safely reserved for "root" access,
> and you are automatically logged in as the "chip" user.
> Don't fear: you can often use the `sudo` command and use the default password `chip` to execute these restricted commands.

初めてターミナルエミュレータを使うと、あなたが"何か"をする権限を持って無いことにすぐ気付くでしょう。
これは、多くのコマンドが安全のために"root"アクセス用に予約されているからであり、
あなたは自動的に"chip"ユーザーとしてログインしているからです。

恐れないで: 多くの場合`sudo`コマンドと初期パスワードの"chip"を使用することで、これらの制限されたコマンドを実行することができます。


> Finally, it is probably wise to change the default password on your CHIP.
> You can do with with
> ```shell
> passwd
> ```
> or
> ```shell
> sudo passwd root
> ```
> and you'll be asked for a new password. Don't forget it!!

最後に、CHIP上のデフォルトパスワードを変更しておくのが、恐らく賢明でしょう。
ログインユーザーのパスワードは以下のコマンドで変更できます。
```shell
passwd
```
また、rootユーザーのパスワードは以下のコマンドで変更できます。
```shell
sudo passwd root
```

コマンドを実行すると、新しいパスワードの入力を求められます。
パスワードは忘れないでください！

> If you are such a fan of the command line, you may want to boot with out the desktop and window system.
> Instructions for that are [here](#boot-into-console)

もしもあなたがコマンドラインのファンであるなら、デスクトップとウィンドウシステムを使わずに起動することができます。
そのための手順は[ここ](#boot-into-console)にあります。

