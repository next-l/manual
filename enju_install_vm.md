---
layout: page
title: Next-L Enju インストールマニュアル（VirtualBox編）
title_short: インストールマニュアル
group: navigation
---
本マニュアルは，オープンソース統合図書館システム Next-L Enjuのインストール方法について，説明しています。情報システム担当者がNext-L Enjuをインストール作業をするときに，お読みください。

本マニュアルの作成にあたっては，(株)三菱総合研究所の全面的な支援をいただきました。心より感謝いたします。

* TOC
{:toc}

{% include enju_introduction.md %} {::comment}第1章 Enju概要{:/comment}

{% include enju_install_vm/intro.md %} {::comment}第2章 Enjuを動作させる方法{:/comment}

{% include enju_install_vm/virtualbox.md %} {::comment}第3章 Enjuを動作させる方法{:/comment}

{% include enju_install_vm/install.md %} {::comment}第4章 Enjuのインストール{:/comment}

{% include enju_install_vm/module.md %} {::comment}第5章 モジュールの追加{:/comment}

第6章 他のコンピュータからの利用設定
====================================

後日公開します。

{::comment}別ファイル名候補：setup_other_computer.md{:/comment}

{% include enju_install_vm/update.md %}{::comment}第7章 Enjuのアップデート{:/comment}

第8章 データのバックアップ
========================

後日公開します。

{::comment}別ファイル名候補：backup.md{:/comment}

{% include enju_install_vm/misc.md %} {::comment}第9章 その他{:/comment}

{% include enju_install_vm/FAQ.md %}{::comment}第10章 トラブルシューティング{:/comment}

{::comment} enju_install_vm/appendix.md Appendix{:/comment}

    ide1:0.present = "TRUE"
    ide1:0.fileName = "/Users/kosuke/Downloads/ubuntu-10.04-server-amd64.iso"
    ide1:0.deviceType = "cdrom-image"
