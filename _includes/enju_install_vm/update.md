{::comment} update.md {:/comment}
<a name="7" />

第7章 Enjuのアップデート
========================

Enjuは，以下の手順で，Enjuのソースコードが公開されているGitHubから変更されたファイルを取り込み最新版にすることができます。

### ■Enjuの停止

1. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

       sudo service apache2 stop
       sudo service simplesolr stop

   vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。
       
### ■最新ソースコードの取り込み

1. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

       cd enju

2. vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

       bundle update

   各種の処理が行われ，メッセージが出力されます。作業にはしばらく時間かかります。

{::comment}
3. バージョンごとのアップデート手順が指定されている場合、 vagrant@precise64:~/enju$ に続いて、指定された手順でコマンドを実行します。

       rake db:migrate RAILS_ENV=production

   各種の処理が行われ，メッセージが出力されます。作業にはしばらく時間がかかります。
{:/comment}

### ■Enjuを再起動

1. vagrant@precise64:~$ または vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

       sudo service apache2 restart
       sudo service simplesolr restart

   vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。
