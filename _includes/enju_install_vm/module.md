<a name="5" />

第5章 モジュールの追加
======================

発注リストの作成機能や、Web資料の登録機能などは、Enjuの標準ではインストールされていません。それぞれモジュールをインストールすることでこれらの機能を追加することができます。

この章では、追加できる機能、モジュールのインストール方法について説明します。

<a name="5-1" />

5-1 [enju_purchase_request]モジュール（発注リスト作成機能）
---------------------------------

1. 「[7-1 Enjuの停止](#7-1)」を実行します。
2. enju/Gemfile に以下の一行を追加して保存します

       gem "enju_purchase_request", '~> 0.1.0.pre9'

	<div class="alert alert-info" markdown="1">
【Memo】
'0.1.0.pre9'の部分は変更になることがあります。最新の情報は、 以下のコマンドで、出力されますので、適宜こちらを参照して読み替えてください。

	    $ gem search -r enju_purchase_request # 正式版
	    $ gem search -r enju_purchase_request --pre # ベータ版

	</div>

3. 「[7-2 最新ソースコードの取込み](#7-2)」を実行します。
4. 以下のコマンドを実行します。

       $ cd enju
       $ rake enju_purchase_request_engine:install:migrations  
       $ rake db:migrate RAILS_ENV=production # 必要に応じてRAILS_ENVを指定

5. app/controllers/appilcation_controller.rbを以下のように編集します。

       enju_leaf
       enju_purchase_request # この行を追加

6. 「[7-3 Enjuを再起動](#7-3)」を実行します。

（その他のモジュールについては、後日公開します。）
