---
layout: page
title: 第8章 Enjuのアップデート及び停止・起動 - Next-L Enju インストールマニュアル（Docker編）
title_short: 第8章 Enjuのアップデート及び停止・起動
group: enju_install_vm
version: 1.4
---

* Contents
{:toc}
{::comment} update.md {:/comment}

第8章 Enjuのアップデート及び停止・起動 {#section8}
====================================

Enjuは，以下の手順で，Enjuのソースコードが公開されているGitHubから変更されたファイルを取り込み最新版にすることができます。

### 8-1 Enjuの停止 {#section8-1}

1. 以下のコマンドを入力します。
```
$ docker compose down
```

### 8-2 最新ソースコードの取り込み {#section8-2}

1. 以下のコマンドを入力します。
```
$ cd enju_leaf
```
2. 以下のコマンドを入力します。
```
$ git pull
$ docker compose pull
$ docker compose build
$ docker compose run --rm web rake db:migrate
$ docker compose run --rm web rake assets:precompile
```

### 8-3 Enjuを（再）起動 {#section8-3}

1. 以下のコマンドを入力します。
```
$ docker compose up -d
```

{% include enju_install_vm/toc_1.4.md %}

