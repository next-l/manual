第6章 Enjuのアップデート
========================

Enjuは，以下の手順で，Enjuのソースコードが公開されているGitHubから変更されたファイルを取り込み最新版にすることができます。

### ■最新ソースコードの取り込み

1. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

       cd enju

2. vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

       git pull origin 1.0

   各種の処理が行われ，メッセージが出力されます。時間もかかります。

3. vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

       bundle

   各種の処理が行われ，メッセージが出力されます。時間もかかります。

4. vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

       rake db:migrate RAILS_ENV=production

   各種の処理が行われ，メッセージが出力されます。時間もかかります。

### ■コンピュータを再起動します。

1. vagrant@precise64:~$ または vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

       sudo shutdown -r now

   vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。

### ■起動後の処理

1. 再起動して，ユーザ名とパスワードの入力が求められますので，ユーザー名( vagrant )と，前に変更したパスワードを入力してログインしてください。  
   ![](assets/images/image_install_034.png)

2. enju@enju:~$ に続いて以下のコマンドを入力します。

       $ sudo /etc/init.d/tomcat restart
       $ sudo /etc/init.d/apache restart

   enju のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。
