---
layout: page
title: 第8章 データのバックアップ - Next-L Enju インストールマニュアル（VirtualBox編）
title_short: 第8章 データのバックアップとリストア
group: enju_install_vm
---

第8章 データのバックアップとリストア {#section8}
==================================

以下の方法があります。

* 仮想マシンのクローンをつくる・使う
* 仮想マシンのWindows上のファイルのバックアップをとる・使う
* 仮想マシン上のデータのみのバックアップ・リストアする

8-1 仮想マシンのクローンをつくる・使う {#section8-1}
--------------------------------------------------

今使ってる仮想マシンとそっくりなコピー（＝クローン）を同じPC上に作る方法です。
enjuのアップデートを試すときなどに使います。

![仮想マシンのクローンのパターン](assets/images/image_install_backup_pattern1.png)

（準備中）

8-2 仮想マシンごとバックアップをとる・使う {#section8-2}
--------------------------------------------------

今使っている仮想マシンを別のHDDにコピーして、PCのHDDウェア障害に備えたり、
別のPCに仮想マシンごと移築したいときの方法です。

![仮想マシンごとバックアップのパターン](assets/images/image_install_backup_pattern2.png)


（準備中）

8-3 データのみのバックアップ {#section8-2}
--------------------------------------------------

仮想マシン以外マシンにサーバーを移したいとき、例えば、Amazon EC2に移植したい、
Macに移植したい、Cent OS に移植したいといった場合の方法です。
こちらについては、[他のサーバへの移行](https://github.com/next-l/enju_leaf/wiki/Backup)を参照してください。

![データのみのバックアップのパターン](assets/images/image_install_backup_pattern3.png)


{::comment}別ファイル名候補：backup.md{:/comment}

{% include enju_install_vm/toc.md %}
