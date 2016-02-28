# C.H.I.P ドキュメント 日本語訳

CHIPドキュメントを日本語訳したものです。

原文はここにあります。

- http://docs.getchip.com/
- https://github.com/getchip/chipdocs

翻訳は雑なので注意してください。


#### Gitbookのビルドについて

chipdocsのリポジトリをサブモジュールとして追加してあります。
これは、画像などのリソースを、なるべくオリジナルに追従しながら参照したかったからです（他に良いやり方ありそう）。

*doc-ja*内では、サブモジュール下にある、オリジナルの各リソースディレクトリに対してsymlinkを張っています。  
この影響で、以下のコマンドが上手く動作しません。

- gitbook build
- gitbook serve

symlinkも*_book*下にそのままコピーされてしまい、リンクが死んでリソースが見えなくなるようです。

なので、ビルドには```gitbook build```の代わりに```doc-ja/build_book.sh```を使用してください。  
こいつは、*_book*下のsymlinkを削除し、実態ファイルをorigin下からコピーしてきます。

```gitbook serve```が使えなくて厳しいので編集中は実ファイルの入ったディレクトリを*doc-ja*下に置くのもありな感じです。



