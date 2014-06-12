---
layout: page
title: Next-L Enju初期設定マニュアル(VirtualBox編)
title_short: 初期設定マニュアル
group: navigation
---
本マニュアルは，オープンソース統合図書館システム　Enju　のシステム設定について，説明しています。管理者がEnjuを使うために，システム設定をするときにお読みください。

本マニュアルの作成にあたっては，(株)三菱総合研究所の全面的な支援をいただきました。心より感謝いたします。

* TOC
{:toc}

<a name="1" />

{% include enju_introduction.md %} {::comment}第1章 Enju概要{:/comment}

<a name="2" />

第2章 Enjuを利用する
====================

Enjuの利用を始めるには，次の作業をします。

* ユーザーアカウントの作成
* ログイン／ログアウト
* ユーザーアカウントの編集

Enjuは，利用者同士のコミュニケーション機能も搭載されています。

* メッセージの送信
* メッセージのログの一覧表示・印刷

{::comment}2-1{:/comment}{% include enju_setup/role.md %}

{::comment}2-2{:/comment}{% include enju_setup/login.md %}

{::comment}2-3{:/comment}{% include enju_setup/message.md %}

<a name="3" />

第3章　図書館のシステム設定を行う
=================================

Enjuの利用を始めるにあたり，図書館のシステム設定として，次のような設定作業を行います。入力にはひらがな，カタカナ，漢字，英数字などの文字が利用できます。ただし，半角カナは使用できません。

* 図書館全体の設定
* 個々の図書館の設定
* 本棚
* 利用者情報・貸出区分とその関係
* 資料の種類と貸出区分との関係
* 催し物の種類
* 書店
* 検索エンジン

{::comment}3-1{:/comment}{% include enju_setup/library_group.md %}

{::comment}3-2{:/comment}{% include enju_setup/library.md %}

{::comment}3-3{:/comment}{% include enju_setup/shelf.md %}

{::comment}3-4{:/comment}{% include enju_setup/user_group.md %}

{::comment}3-5{:/comment}{% include enju_setup/checkout_type.md %}

{::comment}3-6{:/comment}{% include enju_setup/user_group_checkout_type.md %}

{::comment}3-7{:/comment}{% include enju_setup/carrier_type_has_checkout_type.md %}

{::comment}3-8{:/comment}{% include enju_setup/event_category.md %}

{::comment}old 3-9 enju_setup/event_import.md {:/comment}

{::comment}3-9{:/comment}{% include enju_setup/budget_type.md %}

{::comment}3-10{:/comment}{% include enju_setup/bookstore.md %}

{::comment}3-11{:/comment}{% include enju_setup/message_template.md %}

{::comment}3-12{:/comment}{% include enju_setup/search_engine.md %}

{::comment} enju_setup/barcode.md {:/comment}

{::comment}3-13{:/comment}{% include enju_setup/config_misc.md %}

<a name="4" />

第4章　件名のシステム設定を行う
===============================
Enjuの利用を始めるにあたり，件名のシステム設定として，次のような設定作業を行います。

* 件名
* 件名の種類
* 件名標目
* 分類
* 分類型

{::comment}4-1{:/comment}{% include enju_setup/subject.md %}

{::comment}4-2{:/comment}{% include enju_setup/subject_type.md %}

{::comment}4-3{:/comment}{% include enju_setup/subject_heading_type.md %}

{::comment}4-4{:/comment}{% include enju_setup/classification.md %}

{::comment}4-5{:/comment}{% include enju_setup/classification_type.md %}

<a name="4-6" />

4-6 その他の機能
----------------

Enjuでは，その他，次の機能が利用できます。

### ■件名と分類の関係を設定する

* ［図書館の管理］メニューから［システムの設定］を選択します。
* ［件名と分類の関係］をクリックして，設定します。

<a name="5" />

第5章 各種形態や状態等に関するシステム設定を行う
================================================

Enjuの利用を始めるにあたり，形態・状態等に関するシステム設定として，次のような設定作業を行います。

* 資料の形態の作成
* 貸出状態の編集
* 言語の編集
* 利用制限の編集作成
* 発行頻度の編集作成
* 資料の関係の種類の作成

{::comment}5-1{:/comment}{% include enju_setup/carrier_type.md %}

{::comment}5-2{:/comment}{% include enju_setup/ciculaion_status.md %}

{::comment}5-3{:/comment}{% include enju_setup/language.md %}

{::comment}5-4{:/comment}{% include enju_setup/use_restriction.md %}

{::comment}5-5{:/comment}{% include enju_setup/frequency.md %}

{::comment}5-6{:/comment}{% include enju_setup/manifestation_relationship_type.md %}

<a name="5-7" />

5-7 その他の機能
----------------

Enjuでは形態の設定として，その他，次の機能を利用できます。

### ■国と地域を作成する

* ［図書館の管理］メニューから［システムの設定］を選択します。
* ［国と地域］をクリックして，設定します。

<a name="6" />

第6章 資料に関するシステム設定を行う
================

{::comment}6-1{:/comment}{% include enju_setup/identifier_type.md %}

