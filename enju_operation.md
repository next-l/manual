---
layout: page
title: Next-L Enju 運用マニュアル
title_short: 運用マニュアル
group: navigation
---
本マニュアルは、オープンソース統合図書館システム　Enjuの運用について、説明しています。図書館員が、Enjuを使い、図書に関する各種の作業をするときにお読みください。

本マニュアルの作成にあたっては，(株)三菱総合研究所の全面的な支援をいただきました。心より感謝いたします。

* TOC
{:toc}

{% include  enju_introduction.md %}

第2章 Enjuを利用する
====================

Enjuの利用を始めるにあたり、次のような作業を行います。

* ユーザーアカウントの作成
* ログイン／ログアウト
* ユーザーアカウントの編集

Enjuは、利用者同士のコミュニケーション機能も搭載されています。

* メッセージの送信
* メッセージのログの一覧表示・印刷

{::comment}2-1{:/comment}{% include  enju_operation/role.md %}
{::comment}2-2{:/comment}{% include  enju_operation/login.md %}
{::comment}2-3{:/comment}{% include  enju_operation/message.md %}
第3章 利用者情報を管理する
==========================

図書館の利用者情報管理には、次のような機能があります。

* 利用者情報を新規作成する
* 既存のデータから利用者情報をインポートする
* 利用者情報の属性を変更する
* 利用者情報を削除する
* 人物・団体を登録する

利用者情報の属性には、次のような情報が含まれます。

* アカウント情報  
  利用者券情報（利用者番号、ユーザ名、メールアドレス、有効期限、利用者グループ、権限、所属図書館、情報参照権限、言語）
* プロフィール情報（バージョンによってはこの情報はありません）  
  姓名（漢字）、姓名（読み仮名）、生年月日、メールアドレス、住所等（郵便番号、住所、電話番号、FAX番号、メールアドレス）

{::comment}3-1{:/comment}{% include  enju_operation/user_new.md %}
{::comment}3-2{:/comment}{% include  enju_operation/user_import.md %}
{::comment}3-3{:/comment}{% include  enju_operation/user_edit.md %}
{::comment}3-4{:/comment}{% include  enju_operation/user_profile.md %}
{::comment}3-5{:/comment}{% include  enju_operation/user_delete.md %}
{::comment}3-6{:/comment}{% include  enju_operation/user_search.md %}
{::comment}3-7{:/comment}{% include  enju_operation/user.md %}
第4章 図書の受入をする
======================

図書の受入では、次のような作業を行えます。

* 図書を発注する
* 図書を登録する
* 蔵書情報を登録する
* 図書を除籍する
* 新着図書の一覧を表示・印刷する
* 所蔵目録の一覧を表示・印刷する

また、図書の受入に際し、次のような機能を利用することもできます。

* Webページを登録する  
  Webページを資料として受入します
* 画像を登録する表紙画像のデータを、受入した図書にリンクさせます。

{::comment}4-1{:/comment}{% include  enju_operation/order.md %}
{::comment}4-2{:/comment}{% include  enju_operation/create_manifestation.md %}
{::comment}4-3{:/comment}{% include  enju_operation/create_item %}
{::comment}4-4{:/comment}{% include  enju_operation/delete_item.md %}
{::comment}4-5{:/comment}{% include  enju_operation/list_new_item.md %}
{::comment}4-6{:/comment}{% include  enju_operation/create_web_page.md %}
{::comment}4-7{:/comment}{% include  enju_operation/add_image.md %}
第5章 雑誌の受入をする
======================

{::comment}5-1{:/comment}{% include  enju_operation/create_serials.md %}
{::comment}5-2{:/comment}{% include  enju_operation/create_serials_manifestation.md %}
{::comment}5-3{:/comment}{% include  enju_operation/create_serials_import.md %}

第6章 貸出・返却・予約を処理する
================================

Enjuでは、図書の貸出・返却・予約の処理が行えます。次のような作業を行えます。

貸出には、次のような手続きがあります。

* 資料を貸し出す  
  カードを忘れた利用者への貸出を含む
* 貸出の延長手続きをする
* 未登録資料を貸し出す
* 貸出状況を確認する

返却には、次のような手続きがあります。

* 返却を受け付ける
* 予約されている資料を保管する

予約には、次のような手続きがあります。

* 予約を新規作成する
* 予約を確認する
  予約の現状の検索、予約一覧の表示／印刷
* 予約の変更・取消をする

{::comment}6-1{:/comment}{% include  enju_operation/checkout.md %}
{::comment}6-2{:/comment}{% include  enju_operation/checkin.md %}
{::comment}6-3{:/comment}{% include  enju_operation/reserve.md %}
{::comment}6-4{:/comment}{% include  enju_operation/reminder.md %}
{::comment}6-5{:/comment}{% include  enju_operation/ill.md %}
第7章 休館日と催し物を登録する
==============================

Enjuでは、休館日の登録に関して、次のような機能があります。

* 休館日を登録する
  図書館の休館日を登録します。

催し物（お知らせ）の登録には、次のような機能があります。

* 催し物（お知らせ）を登録する
* カレンダーを表示する

{::comment}7-1{:/comment}{% include  enju_operation/holiday.md %}
{::comment}7-2{:/comment}{% include  enju_operation/event.md %}
{::comment}7-3{:/comment}{% include  enju_operation/calendar.md %}
{::comment}7-4{:/comment}{% include  enju_operation/reference.md %}
第9章 資料を検索する
====================

Enjuを利用した資料の検索方法には、演算子やフィールド名を直接入力して検索する方法と、該当のテキストボックスに検索語入力する方法があります。

* キーワードで検索する
* 条件を詳しく指定して検索する
* 演算子やフィールド名を使って検索をする

{::comment}9-1{:/comment}{% include  enju_operation/simple_search.md %}
{::comment}9-2{:/comment}{% include  enju_operation/advanced_search.md %}
{::comment}9-3{:/comment}{% include  enju_operation/search_query.md %}
{::comment}9-4{:/comment}{% include  enju_operation/inventory.md %}
{::comment}9-5{:/comment}{% include  enju_operation/statistics.md %}
第12章 印刷その他の機能を利用する
=================================

Enjuではさまざまなバーコード印刷機能やブックマークなど、図書館の運用に便利な機能が搭載されています。

* バーコードや背表紙ラベルを印刷する
* ブックマークを活用する

{::comment}12-1{:/comment}{% include  enju_operation/print.md %}
{::comment}12-1{:/comment}{% include  enju_operation/bookmark.md %}
