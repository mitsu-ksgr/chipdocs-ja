## ターミナル初心者向け用語集
> ### Terminal for Beginners Glossary  
> One of the great things about Linux is the terminal application. 
> While it may look unfriendly and terse, if you want to really extend the capabilities of CHIP, you'll often find yourself in the terminal.
> If you're a beginner, here's a quick reference of some really important and common commands.
> You can simply add `-h` to get some hints on how to use a command, such as `cp -h` or you can read a manual page using `man cp`.
> Most unix commands have a variety of options that can be executed in the command with *flags*, such as `ls -l -a`. Even better, search the internet!
> This primer is simply here to help you understand what a command might be doing, not to help you use it to its full ability.

ターミナルアプリケーションは、Linuxにおける素晴らしい機能の一つです。
これは不親切でそっけなく見えるかもしれませんが、あなたがもし本当にCHIPの機能を拡張したい場合、度々ターミナル内で自分自信を見付けだすでしょう。
もしあなたが初心者であるなら、このページは、いくつかの重要で一般的なコマンド群のクイックリファンスとして丁度良いでしょう。  
あなたは、コマンドを使う方法について、いくつかヒントを得るために、`cp -h`の様にコマンドに`-h`オプションを追加することができます。
また、`man cp`とすることでマニュアルページを読むことができます。

殆どのUnixコマンドは様々なオプションを持っており、`ls -l -a`の様に*フラグ*を指定して実行することができます。
インターネットで検索することで、より素晴らしいものになるでしょう。

この初心者向け用語集は、単純に、「コマンドが何をするのか」を理解する手助けを行うものです。
コマンドの全機能を活用するのに役立つものではありません。

> * **cd** change directory. open a folder. ex: `cd ~/Pictures` changes your current directory to the home Pictures folder, so you can easily access the files within.
> * **mkdir** make directory. create a folder. ex: `mkdir Vacation` makes a folder named *Vacation* in the current directory. `mkdir ~/Pictures/Vacation` makes a `Vacation` folder in the home Pictures directory.
> * **ls** list files in the current directory so you know what is in it. Some options are `ls -l` to list in long format to provide information about permissions, size, and date. `ls -a` to show hidden files that start with the `.` character.
> * **mv** move a file from one directory to another, or to give it a new name. Ex: `mv this.one that.one` renames a file. `mv this.one ~/Pictures/Vacation/` puts the file *this.one* into the `Vacation` directory.
> * **cp** copy a file from one place to another. Ex: `cp this.one this_01.one` will copy `this.one` to another file `this_01.one`. Add directories for more fun: `cp ~/Pictures/Vacation/saturn.jpg /Users/otherone/Pictures/Vacation/saturn.jpg`. 
> * **rm** remove a file. delete it, and beware!. Use the `-r` to make it recursive to delete a directory. Ex: `rm this.one` deletes that file. `rm -r ~/Pictures/Vacation` to forget the good times.
> * **sudo** super user do. many commands need administrator-like privileges, otherwise they won't work. `apt-get` is a command that needs to be run with `sudo` to allow files to be written to protected directories. You'll see `sudo` as the first word in a lot of commands - all it is doing is giving the command the necessary access. You'll be asked for a password the first time you use `sudo`. The default password and user is "chip".
> * **apt-get** the command used for installing, removing, and finding software for Debian Linux systems, such as the CHIP Operating System. `sudo apt-get install puredata` installs the Pure Data program and any dependencies. `sudo apt-get remove puredata` will remove the program. `sudo apt-cache search image` will search apt repositories for the keyword *search*. And so on.
> * **pwd** present working directory. In case you forget where you are. Not much to it: `pwd` will output the directory name, such as `/Users/home/chip/Pictures/Vacation/`
> * **grep** a tool used for searching through files. It's quite deep and can be complicated, but if you see the word `grep` in some command, you know it's searching for a match.
> * **| (pipe)**  a command used to redirect data into an application.
> * **< (redirect)** a command use to redirect data into a file.
> * **cat** concactenate. used to append data to a file. Ex: `cat "Last line of text" > sometext.txt`. Merge files: `cat append.txt > main.txt` will put all the text in append.txt into main.txt.
> * **less** makes it so you can paginate and read a text tile. Ex: `less longtext.txt` will fill the screen with the first part of the longtext.txt file. Use the space bar to view the next page. Type `q` to exit.
> * **nano** a text editor. You'll often see commands that call `nano` so you can edit a configuration. Ex: `nano /etc/avahi/services/afpd.service` to edit the avahi Apple file service file.
> * **find** look for files in the filesystem. Ex: `find ~/Documents -name particular.txt -type f` will look for the file with the name `particular.txt` in the Documents directory.
> * **chmod** change mode. Used for file permissions, which can be important when sharing things on the network, scripting actions, and many more reasons. 
> * **htop** display the processes currently alive on the CPU. If things seem slow, or you want to see how much CPU or memory a program is using, just type `htop` to see a table of all running processes, then type `q` when you want to exit.
> * **scp** secure copy. copy a file from one computer to another over a network. Ex: `cp Pictures/Vacation/motel.jpg Pictures/Vacation/accident.jpg chip@otherchip.local:~/Pictures` copies a couple jpegs to another computer on the network.
> * **ssh** secure shell. access another computer on the network and use the terminal commands to make changes and control it. Ex: `ssh chip@chip.local` to access your CHIP on a local network.
> * **CTRL C** if you can't use the terminal because a process is taking too long, type CTRL-C on your keyboard to cancel the most recent command.

* **cd** 指定したディレクトリに移動します。
    - 例） `cd ~/Pictures` カレントディレクトリをホームディレクトリ下の"Pictures"ディレクトリに変更します。簡単にディレクトリ内のファイルにアクセスできます。
* **mkdir** ディレクトリを作成します. 
    - 例） `mkdir Vacation` カレントディレクトリに *Vacation* という名前のディレクトリを作成します.
    - 例） `mkdir ~/Pictures/Vacation` ホーム下にある*Pictures*ディレクトリの下に、*Vacation*ディレクトリを作成します。
* **ls** カレントディレクトリ内にある、ファイルやディレクトリの情報を表示します。
    - `ls -l`オプションは、パーミッション、サイズ、日付についての情報を、長い形式で一覧表示します。
    - `ls -a`オプションは、ファイル名が'.'で始まる隠しファイルも一緒に表示します。
* **mv** ファイルを別のディレクトリに移動します。もしくは、ファイル名を変更します。
    - 例） `mv this.one that.one` ファイル名を変更します.
    - 例） `mv this.one ~/Pictures/Vacation/` ファイル*this.one*を、*Vacation*ディレクトリ内に配置します。
* **cp** ファイルをコピーします。
    - Ex: `cp this.one this_01.one` will copy `this.one` to another file `this_01.one`.
    - 例） `cp this.one this_01.one` *this.one*を*this_01.one*という名前のファイルとしてコピーします。
    - より楽しむためにディレクトリを追加します: `cp ~/Pictures/Vacation/saturn.jpg /Users/otherone/Pictures/Vacation/saturn.jpg`
* **rm** ファイルを削除します、注意してください！
    - `-r`オプションを使用すると、ディレクトリを再帰的に削除します.
    - 例） `rm this.one` ファイル*this.one*を削除します。
    - 例） `rm -r ~/Pictures/Vacation` 楽しい思い出を忘れ去ります。
* **sudo** 管理者権限として実行します。多くのコマンドは管理者相当の権限を必要とし、それ以外では動作しません。
    - `apt-get`コマンドは、保護されたディレクトリ内のファイルに書き込むことができるよう、`sudo`を使用して実行する必要のあるコマンドの一つです。多くのコマンドの始めに`sudo`が付けられてるのを見ることになると思いますが、これらは全て、コマンドの実行に必要なアクセス権を与えるためです。
    - 初めて`sudo`コマンドを使用する際は、パスワードの入力を求められます。CHIPのデフォルトパスワードは"chip"です。
* **apt-get** apt-getは、CHIP OSなどのDebian Linuxシステム上で、ソフトウェアのインストール・削除・検索を行うために使用するコマンドです。
    - 例） `sudo apt-get install puredata` puredataと、その依存関係にあるソフトウェアをインストールします。
    - 例） `sudo apt-get remove puredata` puredataを削除します。
    - 例） `sudo apt-cache search image` aptリポジトリを*search*キーワードで検索します。
    - などなど。
* **pwd** 現在のカレントディレクトリを表示します。自分が今どこにいるか忘れた時に使用します。
    - `pwd`は`/Users/home/chip/Pictures/Vacation/`の様にフルパスでディレクトリ名を表示します。
* **grep** ファイルを検索するツールです。
    - これはかなり深いツールで複雑にできますが、何らかのコマンド内で`grep`という単語を見つけた時に、それがマッチする語句を検索しているものだと分かるでしょう。
* **| (パイプ/pipe)**  アプリケーションにデータをリダイレクトするために使用するコマンドです。
* **< (redirect)** データをファイルにリダイレクトするために使用するコマンドです。
* **cat** concactenate. used to append data to a file. Ex: `cat "Last line of text" > sometext.txt`. Merge files: `cat append.txt > main.txt` will put all the text in append.txt into main.txt.
* **cat** 連結します。ファイルにデータを追加するために使用されます。
    - 例） `cat "Last line of text" > sometext.txt`: ファイルマージ: `cat append.txt > main.txt` で、*main.txt*に*append.txt*の全てのテキストを追加します。
* **less** テキストファイルをページ付けして読むことができます。
    - 例） `less longtext.txt` *longtext.txt*ファイルの最初の部分で画面を埋めます。
        - 次ページを表示するには、スペースキーを使用します。
        - 終了するには、'q'を入力します。
* **nano** テキストエディター.
    - あなたは、度々`nano`と呼ばれるコマンドを見かけます。これを使って、設定を編集することができます。
    - 例） `nano /etc/avahi/services/afpd.service` "/etc/avahi/services/afpd.service"ファイルを編集します。
* **find** ファイルシステム内のファイルを検索します。
    - 例） `find ~/Documents -name particular.txt -type f` Documentsディレクトリ内から*particular.txt*という名前を持つファイルを探します。
* **chmod** アクセス権を変更します。
    ファイルのアクセス権限のために使用され、これは、ネットワーク上のものを共有する場合やスクリプトを実行するときに、多くの理由で重要になります。
* **htop** 現在生きているCPU上のプロセルを表示します。
    - 動作が遅く見える場合や、プログラムがどの程度CPUやメモリを使用しているかを確認したい場合に、'htop'と入力するだけで実行中のプロセスを表示させることができます。終了したい場合は'q'を入力します。
* **scp** セキュア・コピー。別のネットワークのコンピュータに、ファイルをコピーします。
    - 例） `cp Pictures/Vacation/motel.jpg Pictures/Vacation/accident.jpg chip@otherchip.local:~/Pictures` カップルのJPEGファイルを、別ネットワーク上のコンピュータにコピーします。
* **ssh** セキュア・シェル。ネットワーク上にある別のコンピュータにアクセスし、ターミナルコマンドを使用して変更を行い、コンピュターを制御します。
    - 例） `ssh chip@chip.local` ローカルネットワーク上のCHIPにアクセスします。
* **CTRL-C** プロセスの実行に時間が掛かり過ぎて端末が使用できない場合に、一番最後のコマンドをキャンセルするには、キーボード上のCTRL-Cを入力します。

