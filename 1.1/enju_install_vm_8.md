---
layout: page
title: 第8章 Enjuのアップデート - Next-L Enju インストールマニュアル（VirtualBox編）
title_short: 第8章 Enjuのアップデート
group: enju_install_vm
version: 1.1
---

* Contents
{:toc}
{::comment} update.md {:/comment}

第8章 Enjuのアップデート {#section8}
====================================

Enjuは，以下の手順で，Enjuのソースコードが公開されているGitHubから変更されたファイルを取り込み最新版にすることができます。

### 8-1 Enjuの停止 {#section8-1}

#### 1. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

	sudo stop enju_leaf

<div class="alert alert-info memo" markdown="1">
【Memo】 古い仮想マシンの場合、別の停止方法の場合があります。うまくいかない場合、以下を試してみてください。

Enju WS参加者のみ該当（2014年5月時点の仮想マシンでのみ必要）

	rake sunspot:solr:stop

2014年1月2日作成の仮想マシンの場合 (vagrant_default_1388636385395_61088.vbox)

	sudo service apache2 stop
	sudo service simplesolr stop

</div>

vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。

### 8-2 最新ソースコードの取り込み {#section8-2}

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

### 8-3 Enjuを再起動 {#section8-3}

#### 1. vagrant@precise64:~$ または vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

	sudo start enju_leaf

<div class="alert alert-info memo" markdown="1">
【Memo】 古い仮想マシンの場合、別の再起動方法の場合があります。以下を試してみてください

Enju WS参加者のみ該当（2014年5月時点の仮想マシンでのみ必要）

	rake sunspot:solr:start

2014年1月2日作成の仮想マシンの場合 (vagrant_default_1388636385395_61088.vbox)

	sudo service apache2 restart
	sudo service simplesolr restart

</div>

vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。

{% include enju_install_vm/toc.md %}

