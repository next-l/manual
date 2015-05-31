---
layout: page
title: 第7章 Enjuのアップデート - Next-L Enju インストールマニュアル（VirtualBox編）
title_short: 第7章 Enjuのアップデート
group: enju_install_vm
---

* Contents
{:toc}
{::comment} update.md {:/comment}

第7章 Enjuのアップデート {#section7}
====================================

Enjuは，以下の手順で，Enjuのソースコードが公開されているGitHubから変更されたファイルを取り込み最新版にすることができます。

### 7-1 Enjuの停止 {#section7-1}

使用している仮想マシンによって停止方法が異なります。

#### 1. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

##### 2014年1月2日作成の仮想マシンの場合 (vagrant_default_1388636385395_61088.vbox)

	sudo service apache2 stop
	sudo service simplesolr stop

##### 2014年6月xx日作成の仮想マシン以降の場合 (vagrant_defaultxxxxxxxxxxxxxxxxx.vbox)

	sudo stop enju_leaf

<div class="alert alert-info memo" markdown="1">
【Memo】 Enju WS参加者のみ該当（2014年5月時点の仮想マシンでのみ必要）

	rake sunspot:solr:stop

</div>

vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。

### 7-2 最新ソースコードの取り込み {#section7-2}

#### 1. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

	cd enju

#### 2. vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

	bundle update

各種の処理が行われ，メッセージが出力されます。作業にはしばらく時間かかります。

<div class="alert alert-info memo" markdown="1">
【Memo】 バージョンごとの更新手順が指定されている場合があります。バージョンごとの変更手順は [Updateページ](https://github.com/next-l/enju_leaf/wiki/Update) をごらんください。
</div>

{::comment}
#### 3. バージョンごとのアップデート手順が指定されている場合、 vagrant@precise64:~/enju$ に続いて、指定された手順でコマンドを実行します。

	rake db:migrate RAILS_ENV=production

各種の処理が行われ，メッセージが出力されます。作業にはしばらく時間がかかります。
{:/comment}

### 7-3 Enjuを再起動 {#section7-3}

使用している仮想マシンによって再起動方法が異なります。

#### 1. vagrant@precise64:~$ または vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

##### 2014年1月2日作成の仮想マシンの場合 (vagrant_default_1388636385395_61088.vbox)

	sudo service apache2 restart
	sudo service simplesolr restart

##### 2014年6月xx日作成の仮想マシン以降の場合 (vagrant_defaultxxxxxxxxxxxxxxxxx.vbox)

	sudo start enju_leaf

<div class="alert alert-info memo" markdown="1">
【Memo】 Enju WS参加者のみ該当（2014年5月時点の仮想マシンでのみ必要）

	rake sunspot:solr:start

</div>

vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。

{% include enju_install_vm/toc.md %}

