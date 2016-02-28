---
layout: page
title: 第8章 Enjuのアップデート - Next-L Enju インストールマニュアル（VirtualBox編）
title_short: 第8章 Enjuのアップデート
group: enju_install_vm
version: 1.2
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

vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。

### 8-2 最新ソースコードの取り込み {#section8-2}

#### 1. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

	cd enju

#### 2. vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

	bundle update

各種の処理が行われ，メッセージが出力されます。作業にはしばらく時間かかります。

### 8-3 Enjuを再起動 {#section8-3}

#### 1. vagrant@precise64:~$ または vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

	sudo start enju_leaf

vagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。

{% include enju_install_vm/toc.md %}

