---
layout: page
title: 第6章 貸出・返却・予約を処理する - Next-L Enju 運用マニュアル
title_short: 第6章 貸出・返却・予約を処理する
group: enju_operation
version: 1.4
---

* Contents
{:toc}

第6章 貸出・返却・予約を処理する {#section6}
============================================

Enjuでは、図書の貸出・返却・予約の処理が行えます。次のような作業を行えます。

貸出には、次のような手続きがあります。

* 資料を貸し出す  
  カードを忘れた利用者への貸出を含む
<!-- * 未登録資料を貸し出す -->
* 貸出状況を確認する
* 貸出の延長手続きをする

返却には、次のような手続きがあります。

* 返却を受け付ける
* 予約されている資料を保管する

予約には、次のような手続きがあります。

* 予約を新規作成する
* 予約を確認する
  予約の現状の検索、予約一覧の表示／印刷
* 予約の変更・取消をする

また、その他にも、次のような手続きがあります。

* 延滞情報を表示する

{::comment}6-1  enju_operation/checkout.md {:/comment}
{::comment}6-2  enju_operation/checkin.md {:/comment}
{::comment}6-3  enju_operation/reserve.md {:/comment}
{::comment}6-4  enju_operation/reminder.md {:/comment}
{::comment}6-5  enju_operation/ill.md {:/comment}

6-1 貸出をする {#section6-1}
-----------------------------

Enjuでは、利用者カードと資料のバーコードを読み込むことにより貸出を行います。利用者カードを忘れた利用者にも、氏名などから利用者を検索し利用者番号を確認することにより、資料の貸出が可能です。貸出の延長や未登録資料の貸出、貸出状況の確認も行えます。

### 6-1-1 資料を貸し出す {#section6-1-1}

#### 1. ［貸出・返却・予約］メニューから［貸出］を選択します。  

![貸出](../assets/images/1.1/image_operation_161.png)

#### 2. 利用者番号を入力し［読み込み］ボタンをクリックします。  

![利用者番号読み込み](../assets/images/1.2/image_operation_163.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 通常は、利用者カードのバーコードを読み込みます。
* 右メニューの[返却の新規作成]リンクをクリックすると返却の新規作成の画面に遷移します。
* 右メニューの[利用者の検索する]をクリックすると、利用者を検索できる画面に遷移します。利用者カードを忘れた利用者がいた場合などに使用します。

</div>

#### 3. 所蔵IDを入力し、［読み込み］ボタンをクリックします。  

![所蔵ID読み込み](../assets/images/1.2/image_operation_164.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 通常は、図書のバーコードを読み込みます。
* この画面で、この利用者が現在貸出中の資料が、画面下部に「現在貸出中の資料」として表示されますので確認できます。
* 右メニューの一番上のリンクをクリックすると当該利用者の利用者情報の画面に遷移します。
* 右メニューの「利用者番号」は当該利用者の利用者番号を表示しています。
* 右メニューにある「図書 : 1/ 10」は、「借りている本の数 / 借りられる上限数」を表しています。
* 右メニューの[返却]リンクをたどると、全ての利用者分の返却の一覧画面へ遷移します。
* 右メニューの[予約]リンクをたどると、この利用者分の予約の一覧画面へ遷移します。

</div>

#### 4. ［上記の資料を貸し出す］ボタンをクリックします。  

![上記の資料を貸し出す](../assets/images/1.2/image_operation_165.png)

#### 5. 「貸出が完了しました。」のメッセージが表示され、貸出の手続きが完了します。

![貸出が完了しました](../assets/images/1.2/image_operation_166.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューにある「図書 : 2/ 10」は、「借りている本の数 / 借りられる上限数」を表しています。
* 右メニューの[予約]リンクをたどると、この利用者分の予約の一覧画面へ遷移します。
* 右メニューの[全ての貸出]リンクをたどると、全ての利用者分の貸出の一覧画面へ遷移します。
* 予約ありの[はい]をたどると予約がはいっている資料のみを表示します。※Enju Leaf 1.1.0では、バグがあり、正常に動作しません（参照： [issue #982](https://github.com/next-l/enju_leaf/issues/982)）
* 予約ありの[いいえ]をたどると予約がはいっていない資料のみを表示します。※Enju Leaf 1.1.0では、バグがあり、正常に動作しません（参照： [issue #982](https://github.com/next-l/enju_leaf/issues/982)）
* [RSS]をたどるとこの利用者の貸出履歴をRSSでダウンロードできます
* [TSV]をたどるとこの利用者の貸出履歴をTSVでダウンロードできます。

</div>

### 6-1-2 利用者カードを忘れた利用者に資料を貸し出す {#section6-1-2}

#### 1. ［図書館の管理］メニューから［利用者の管理］を選択します。  

![利用者の管理](../assets/images/1.1/image_operation_user.png)

<div class="alert alert-info memo">【Memo】[貸出・返却・予約]→[貸出]した後の画面の右メニュー[利用者を検索する]でもよいです。
</div>

#### 2. フルネームやユーザ名などを検索語として入力し［検索］をクリックします。  

![検索](../assets/images/1.1/image_operation_168.png)

#### 3. 該当するユーザの［利用者番号］のリンクをクリックします。  

![利用者番号](../assets/images/1.1/image_operation_170.png)

#### 4. 利用者情報を確認し、右メニューの[貸出の新規作成] をクリックします。

![利用者番号](../assets/images/1.2/image_operation_172.png)

<div class="alert alert-info memo">【Memo】この利用者のさらに詳細な情報（利用者グループや権限など）を知りたい場合は右メニューの[編集]リンクをクリックすると確認できます。
</div>

#### 5. 当該利用者の利用者番号が入力された貸出画面が表示されますので、以降は、通常の貸出の手順に従います。  

![利用者番号](../assets/images/1.2/image_operation_176.png)

### 6-1-3 貸出履歴を表示する {#section6-1-3}

ここでは、全員分の貸出履歴を表示する方法と
ログインユーザ自身の貸出履歴を表示する方法を説明します。

個々の利用者の貸出履歴を確認したい場合は、利用者情報の表示画面やその画面の右メニューのリンクから辿れる画面で確認できます
（詳細：[「3-5 利用者情報を表示する」](enju_operation_3.html#section3-5)）。

#### 1. ［貸出・返却・予約］メニューから［貸出履歴］を選択します。  

![貸出履歴](../assets/images/1.1/image_operation_checkout_log.png)

#### 2. 貸出履歴が表示されます。現在、貸出中の資料とともに返却済みの資料も含めて表示されます。[自分の貸出]をクリックします。

![貸出中の資料の一覧](../assets/images/1.3/image_operation_181.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 削除リンクをクリックすると，ユーザー情報のみが削除される。貸出履歴自体は削除されない。
* （すでにユーザー情報が削除された貸出履歴には削除リンクは表示されない）
* 返却済みの貸出履歴は「返却期限」列に「返却済み」と書いてあります。
* 「利用者アカウント」列は空白になっているのは、「貸出の履歴を保存する」にチェックの入っていない利用者アカウントの返却済みのレコードの場合です。
* 右メニューの[自分の貸出]をクリックするとログインユーザ自身の貸出のみを表示します。
* 右メニューの[延滞]リンクをたどると、延滞している資料の貸出履歴のみを表示します。
* 予約ありの[はい]をたどると予約がはいっている資料のみを表示します。※Enju Leaf 1.1.0では、バグがあり、正常に動作しません（参照： [issue #982](https://github.com/next-l/enju_leaf/issues/982)）
* 予約ありの[いいえ]をたどると予約がはいっていない資料のみを表示します。※Enju Leaf 1.1.0では、バグがあり、正常に動作しません（参照： [issue #982](https://github.com/next-l/enju_leaf/issues/982)）
* [RSS]をたどると全利用者の貸出履歴の最新の500件をRSSでダウンロードできます（詳細 [#issue 984](https://github.com/next-l/enju_leaf/issues/984)）。
* [TSV]をたどると全利用者の貸出履歴の最新の500件をTSVでダウンロードできます。
</div>

<div class="alert alert-success memo" markdown="1">

【Column】予約が入っている貸出履歴の例

* 予約が入っている資料の場合は、予約の人数が表示されます。

![予約が入っている貸出履歴の例](../assets/images/1.3/image_operation_reserved_rec.png)

</div>


#### 3. ログインユーザ自身の貸出履歴のみが表示されます。

![貸出履歴の一覧](../assets/images/1.1/image_operation_181_2.png)


<div class="alert alert-success memo" markdown="1">

#### 【Column】RSSの例

![貸出履歴の一覧の](../assets/images/1.1/image_operation_181_2_rss.png)

</div>

<div class="alert alert-success memo" markdown="1">

#### 【Column】TSVの例

<pre>
username	user_number	item_identifier	title	checked_out_at	due_date	checked_in_at	(created_at: 2020-01-11 14:56:04 +0900)
"zuser01"	"z123"	"110333796"	"基本件名標目表"	"2020-01-11 14:55:44 +0900"	"2020-02-10 23:59:59 +0900"	"2020-01-11 14:55:51 +0900"
"20020044"	"20020044"	"876123"	"Ruby on Rails 5.0インストール手順書"	"2019-12-19 14:59:23 +0900"	"2020-01-18 23:59:59 +0900"	
		"156106009970"	"図書館の問題利用者 : 前向きに対応するためのハンドブック"	"2019-10-03 11:50:06 +0900"	"2019-11-02 23:59:59 +0900"	"2019-10-03 12:09:56 +0900"
</pre>

注） バージョン 1.3.0 より、checked_in_at（返却日）が追加されました。バージョン 1.3.0でusernameが表示されていないバグは1.3.1で修正されました。バージョン 1.3.2 より、usernumber（利用者番号）が追加されました。

バージョン1.3.2で以下の項目が出力されます。

* username（ユーザ名）
* usernumber（利用者番号）
* item_identifier（所蔵情報ID）
* title（原題）
* checked_out_at(貸出日)
* due_date（返却期限）
* checked_in_at（返却日）

</div>

<div class="alert alert-success memo" markdown="1">

### 【Column】現在の貸出データを抽出する

現在の貸出データ（今までの累計ではなく、今現在の貸し出し状況）を抽出する方法です。
現在、Webブラウザから操作して現在の貸出データをまとめて出力する機能がないため、代替機能として、コンソールにログインしてコマンドで出力する方法を紹介しておきます。

<pre>
$ rake enju_circulation:export:checkout RAILS_ENV=production > output.txt
</pre>

とすると、output.txt ファイルに出力されます。
（RAILS_ENV=production は、RAILS_ENV=development など必要に応じて修正してください）

以下の項目が出力されます。

- checked_out_at(貸出日)
- due_date（返却期限）
- item_identifier（所蔵情報ID）
- call_number（請求記号）
- shelf（本棚）
- carrier_type（資料の形態）
- title（原題）
- username（ユーザ名）
- full_name（フルネーム）
-user_number（利用者番号）
      
</div>

### 6-1-4 貸出の延長手続きをする {#section6-1-4}

#### 1. 貸出の一覧で、貸出の延長手続きをしたい貸出項目の［貸出期間の延長］をクリックします。  

![貸出期間の延長](../assets/images/1.3/image_operation_183.png)

#### 2. 貸出期限日などを編集して、［更新する］ボタンをクリックします。  

![貸出を更新](../assets/images/1.3/image_operation_185.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 注：貸出の更新、「新しい貸出期限日」、[更新する]ボタンの部分は、User権限の時の表示部分が表示されているだけですので、無視してください。
* 注：「更新回数」は修正できるようなフォームがありますが修正できません（詳細 [#1005](https://github.com/next-l/enju_leaf/issues/1005)）
* 右メニューの[表示]をクリックすると、この編集画面の表示画面に遷移します。
* 右メニューの[戻る]をクリックすると、この画面の一つ前の画面に遷移します。
</div>

#### 3. 「貸出は正常に更新されました。」のメッセージが表示され、貸出期間が延長されます。

![貸出が更新されました](../assets/images/1.3/image_operation_186.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[編集]をクリックすると、編集画面に遷移します。
* 右メニューの[戻る]をクリックすると、この画面の一つ前の画面に遷移します。
* 右メニューの[貸出の一覧]をクリックすると全利用者分の貸出履歴に遷移します。

</div>

6-2 返却を受け付ける {#section6-2}
-------------------------------

Enjuでは、返却資料を受け付けられると同時に、予約の入っている資料が返却された場合は、アラートを表示させることができます。アラートの表示に気付いたら、予約された本は書架に戻さずに特定の場所で管理しましょう。

#### 1. ［貸出・返却・予約］メニューから［返却］を選択します。  

![返却](../assets/images/1.1/image_operation_186_2.png)

#### 2. 所蔵情報IDを入力し、［返却（取り消しはできません）］ボタンをクリックします。  

![返却（取り消しはできません）クリック](../assets/images/1.1/image_operation_188.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 通常は、図書のバーコードを読み込みます。
* 右メニューの[返却の新規作成]リンクをたどると返却の新規作成の画面（同じ画面）が表示されます。
* 右メニューの[返却の一覧]リンクをたどると全利用者分のこれまでの返却履歴の一覧が表示されます。

</div>

#### 3. 「この資料は正常に返却されました。」のメッセージが表示され、返却の手続きが完了します。

![返却](../assets/images/1.1/image_operation_188_2.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[返却の新規作成]リンクをたどると返却の新規作成の画面が表示されます。
* 右メニューの[返却の一覧]リンクをたどると全利用者分のこれまでの返却履歴の一覧が表示されます。

</div>

#### 4. もし、予約がはいった資料であれば、「この資料は予約されています！」と表示されます。このメッセージが表示された場合は、その資料を所定の場所に取り置きします。

![返却](../assets/images/1.1/image_operation_188_2_r.png)

<div class="alert alert-success memo" markdown="1">
<h4 class="alert-heading">【Column】予約情報</h4>
予約資料が返却された場合、予約情報が修正されます。予約情報に取り置きした資料の[所蔵情報ID]と[請求記号]が記録され、[予約状態]が「受付済み」から「取置済み」に変更されます。予約情報の確認は「6-3予約を受け付ける」の[「6-3-2 予約の一覧を表示・印刷する」](#section6-3-2)
や[「6-3-4 取置済みの資料を表示する」](#section6-3-4)を参照してください。
</div>

6-3 予約を受け付ける {#section6-3}
----------------------------------

予約は利用者自身で行うのが主ですが、図書館員が利用者の予約を受け付けることもできます。

<div class="alert alert-info memo" markdown="1">
【Memo】
* 利用者番号がないユーザは予約が行えないようになっています。現状ではそういうユーザがログインした場合も予約リンクが表示されるので注意が必要です。そのリンクをクリックした場合は、「アクセスが拒否されました」と表示されます。
</div>

### 6-3-1 予約を新規作成する {#section6-3-1}

#### 1. 予約したい本の名前を検索語に入力し、［検索］をクリックします。  

![検索](../assets/images/1.1/image_operation_193.png)

#### 2. 予約したい本が検索されたら、［予約］をクリックします。  

![予約](../assets/images/1.1/image_operation_195.png)

#### 3. 予約者の利用者番号等を入力し、［登録する］ボタンをクリックします。  

![作成](../assets/images/1.2/image_operation_197.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[予約の一覧]リンクをたどると全利用者の予約の一覧の画面が表示されます。
* 右メニューの[資料の表示]リンクをたどるとこの資料の書誌詳細が表示されます。

</div>


#### 4. 「予約が正常に作成されました」と表示され、予約が作成されます。

![作成](../assets/images/1.2/image_operation_197_2.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[編集]リンクをたどると予約の編集画面が表示されます。
* 右メニューの[取消]リンクをたどるとこの予約を取り消せます。
* 右メニューの[予約の一覧]リンクをたどるとこの予約の一覧画面が表示されます。

</div>

### 6-3-2 予約の一覧を表示・印刷する {#section6-3-2}

#### 1. ［貸出・返却・予約］メニューから［予約の一覧］を選択します。  

![予約の一覧](../assets/images/1.1/image_operation_reserve.png)

#### 2. 予約の一覧が表示されます。一覧を印刷したい場合は、右メニューの［TSV］をクリックしてTSVファイルを保存し、必要に応じてTSVファイルを印刷します。  

![TSV](../assets/images/1.1/image_operation_200.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 「Id」列の当該Idをクリックするとその予約の詳細情報が表示されます。
* [編集]リンクをクリックすると、その予約情報を編集できます。
* [取消]リンクをクリックすると、その予約情報を取消できます。
* 取消した予約情報には[削除]リンクが表示されますので、削除できます。
* ※ 状態が、「取置済み」の場合、右の[編集]、[取消]リンクが表示されないことがあるというバグが確認されています。 (詳細 [#1014](https://github.com/next-l/enju_leaf/issues/1014)）
* 右メニューの[予約の新規作成]リンクをたどると、予約が可能な資料のみに絞り込んだ資料検索画面へ遷移しますので、その画面で検索して、予約の新規作成にすすむことができます。
* 右メニューの[全ての予約]リンクをクリックすると、利用者全員分の予約の一覧画面に遷移します。
* 右メニューの[自分の予約]リンクをクリックすると、ログインユーザーの分の予約の一覧画面に遷移します。
* 右メニューの状態の下のリンク[受付済み]、[取置き済み]、[取消済み]などのリンクをクリックするとその状態に絞り込んだ予約が表示されます。
* 右メニューの[RSS]リンクをクリックすると予約の一覧の情報がRSSで表示されます。常に最新の500件のみを表示します。（詳細 [#issue 998](https://github.com/next-l/enju_leaf/issues/998)）
* 右メニューの[TSV]リンクをクリックすると予約の一覧の情報がTSVで表示されます。常に最新の500件のみを表示します。（詳細 [#issue 998](https://github.com/next-l/enju_leaf/issues/998)）

</div>

<div class="alert alert-success memo" markdown="1">

### 【Column】TVS形式のデータファイル

TSV形式のデータファイル（TSVファイル）とは、
      項目をタブで区切ったテキストファイルです。
      1行目にそれぞれの項目に関わるフィールド名が記入されています。
      フィールド名とその意味については次の通りです。

  <table class="table table-bordered table-condensed table-striped">
    <caption>予約一覧のエクスポートTSVの項目</caption>
    <thead>
      <tr>
        <th>フィールド名</th>
        <th>データ形式</th>
        <th>内容</th></tr>
    </thead>
    <tbody>
      <tr>
        <td>id</td>
        <td>int</td>
        <td>予約ID</td></tr>
      <tr>
        <td>state</td>
        <td>utf8</td>
        <td>状態（retained（取置済み）、requested（受付済み）etc）</td></tr>
      <tr>
        <td>maniestation_id</td>
        <td>ascii</td>
        <td>書誌ID</td></tr>
      <tr>
        <td>title</td>
        <td>utf8</td>
        <td>予約資料のタイトル</td></tr>
      <tr>
        <td>creator</td>
        <td>utf8</td>
        <td>著者</td></tr>
      <tr>
        <td>publisher</td>
        <td>utf8</td>
        <td>出版者</td></tr>
      <tr>
        <td>pub_date</td>
        <td>ascii(yyyy)</td>
        <td>出版年</td></tr>
      <tr>
        <td>isbn</td>
        <td>ascii</td>
        <td>予約資料のISBN</td></tr>
      <tr>
        <td>item_identifier</td>
        <td>ascii</td>
        <td>取置資料の所蔵情報ID（取置済みの場合のみ表示）</td></tr>
      <tr>
        <td>call_number</td>
        <td>utf8</td>
        <td>取置資料の請求記号（取置済みの場合のみ表示）</td></tr>
      <tr>
        <td>user_number</td>
        <td>ascii</td>
        <td>利用者番号</td></tr>
      <tr>
        <td>username</td>
        <td>ascii</td>
        <td>利用者名</td></tr>
      <tr>
        <td>library</td>
        <td>ascii</td>
        <td>受け取り館</td></tr>
      <tr>
        <td>created_at</td>
        <td>ISO8601</td>
        <td>予約時刻（例：2014-06-24 15:00:00 +0900）</td></tr>
      <tr>
        <td>expired_at</td>
        <td>ISO8601</td>
        <td>有効期限（例：2014-06-24 15:00:00 +0900）</td></tr>
    </tbody>
  </table>

予約一覧のエクスポートTSVの例

![TSVデータ](../assets/images/1.3/image_operation_200_tsv.png)

### 【Column】予約の一覧のRSSの例

![RSSデータ](../assets/images/1.1/image_operation_200_rss.png)

</div>

### 6-3-3 予約資料を取置済みにする {#section6-3-3}

受け付けた予約資料の資料を確保できた場合、状態を[取置済み]にする必要があります。
予約資料の状態を取置状態にするには以下の2つの方法があります。

1. 返却処理を行う
2. 予約情報を編集する

返却処理による方法は[「6-2 返却を受け付ける」](#section6-2)を参照してください。
ここでは、予約情報を編集する方法について説明します。

#### 1. [貸出・返却・予約］メニューから［予約の一覧］を選択します。

![予約の一覧](../assets/images/1.1/image_operation_reserve.png)

#### 2. 該当する予約資料の横の[編集]リンクをクリックします。

![予約の編集等](../assets/images/1.2/image_operation_202.png)

#### 3. 状態が[受付済み]の予約資料の編集画面が表示されます。[個別資料ID]の欄に取置済みとしたい資料の所蔵IDを入力し、[更新する]ボタンをクリックします。

![受付済みの予約資料の編集画面](../assets/images/1.2/image_operation_reserve_edit_1.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[表示]をクリックすると予約の表示画面に遷移します。
* 右メニューの[戻る]をクリックするとこの画面の一つ前の画面に遷移します。

</div>

#### 4. 予約情報が更新できると「予約は正常に更新されました」というメッセージが表示され、状態が[取置済み]になります。

![受付済みの予約資料の更新画面](../assets/images/1.2/image_operation_reserve_edit_2.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[編集]リンクをたどると予約の編集画面が表示されます。
* 右メニューの[取消]リンクをたどるとこの予約を取り消せます。
* 右メニューの[予約の一覧]リンクをたどると予約の一覧画面が表示されます。

</div>

### 6-3-4 取置済みの資料を表示する {#section6-3-4}

状態が[取置済み]の予約資料のみを表示することができます。

#### 1. ［貸出・返却・予約］メニューから［予約の一覧］を選択します。

![予約の一覧](../assets/images/1.1/image_operation_reserve.png)

#### 2. 右メニューの[取り置き済み(n)]リンクをクリックします。

![取置済みのみを表示](../assets/images/1.1/image_operation_200_2.png)

#### 3. 状態が[取置済み]の予約資料のみが表示されます

![取置済みの資料のみ出力](../assets/images/1.1/image_operation_200_3.png)

<div class="alert alert-info memo">【Memo】右メニューの[この絞り込みを解除する]をクリックすると全予約が表示されます。
</div>

### 6-3-5 利用者に予約資料の到着を連絡する {#section6-3-5}

<div class="alert alert-info memo" markdown="1">【Memo】Next-L Enju Leaf 1.1.0 現在、この機能は未実装です(開発予定はあります）（詳細 [#1016](https://github.com/next-l/enju_leaf/issues/1016)）
</div>

<!-- 

#### 1. その日に返却された予約資料の一覧を表示します。

<div class="alert alert-info memo">【Memo】一覧には、ユーザが希望する連絡方法（メール、電話、FAX）などが表示されます。
</div>

#### 2. メールで連絡したい場合は、メールでの連絡を希望しているユーザの［メール連絡］にチェックを入れ、［メールを送信］ボタンをクリックします。

#### 3. メール以外の連絡方法を希望しているユーザについては、それぞれ個別に対応します。

-->

### 6-3-6 予約の変更・取消をする {#section6-3-6}

#### 1. ［貸出・返却・予約］メニューから［予約の一覧］を選択します。

![予約の一覧](../assets/images/1.1/image_operation_reserve.png)

#### 2. 編集したい場合は予約の[編集]を、取消したい場合は[取消]を、削除したい場合は[削除]をクリックします。

※　取消済みの予約は[削除]ができます。

![予約の編集等](../assets/images/1.1/image_operation_202_2.png)

#### 3. 編集する場合は、個別資料ID、有効期限、受取館などを変更して［予約を更新］ボタンをクリックします。 

※個別資料IDを他のものに変更する場合は取り置いておいた本を他の本に変えたいときに使用します。

※User権限の場合はできることが異なります（詳細　利用者マニュアル[「4-3 予約の変更をする」](https://next-l.github.io/manual/enju_user_4.html#section4-3)）。

![予約を更新](../assets/images/1.1/image_operation_203.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[表示]をクリックすると予約の表示画面に遷移します。
* 右メニューの[戻る]をクリックするとこの画面の一つ前の画面に遷移します。

</div>

6-4 延滞情報を表示する {#section6-4}
------------------------------------------------------

[利用者グループの設定（初期設定マニュアル3-4節参照）](enju_setup_3.html#section3-4)で、設定した時期・頻度で
システムから自動的に貸出期限を過ぎていることを知らせるメッセージやメールが送られます
（※メールの送信には[メールサーバー（インストールマニュアル4-4-3節参照）](enju_install_vm_4.html#section4-4-3)の設定が必要です）。

この機能とは別に、個別にメールや電話の督促の連絡をするために、
資料の返却が遅れている資料や借りているユーザを一覧表示する機能について説明します。

<div class="alert alert-info memo" markdown="1">

【Memo】

この画面からメールの督促を手動で送る機能を開発する予定がありますが、
Next-L Enju Leaf 1.1.0 現在、未実装です( [issue #159](https://github.com/next-l/enju_leaf/issues/159)）。

</div>

#### 1. ［貸出・返却・予約］メニューから［貸出履歴］をクリックします。  

![貸出履歴](../assets/images/1.1/image_operation_checkout_log.png)

#### 2. 右メニューの［延滞］をクリックします。  

![延滞](../assets/images/1.3/image_operation_207.png)

#### 3. 何日延滞している人に督促の連絡をしたいのかにより、延滞日数に数値を入力して［検索］ボタンをクリックします。  

![延滞日数に数値を入力](../assets/images/1.1/image_operation_209.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* たとえば、延滞日数に「7」と入力すると、1週間以上延滞している資料のみに絞り込まれます。
* 右メニューの[貸出の一覧に戻る]をクリックすると貸出履歴の一覧の画面に遷移します。
* 右メニューの予約ありの[はい]や[いいえ]をクリックすると予約のあるもののみもしくは予約のないもののみを表示します ※ Enju Leaf 1.1.0 ではバグがあり、うまく機能しません　詳細 [issue #1037](https://github.com/next-l/enju_leaf/issues/1037)

</div>

<!--

#### 4. メールで督促の連絡をする人にチェックをして、［メールを送信］をクリックします。

-->

#### 4. 必要に応じて右メニューの［TSV］をクリックしてTSVファイルを保存します。 

※　注意!　この画面で見えている延滞日数にかかわらず、すべての延滞日数の資料をTSVに出力します([issue #990](https://github.com/next-l/enju_leaf/issues/990))。

![TSVファイルを保存](../assets/images/1.1/image_operation_210.png)

<div class="alert alert-success memo" markdown="1">

【Column】TSVの例

<pre>
username	item_identifier	title	checked_out_at	due_date	Overdue items (created_at: 2017-06-08 01:35:17 +0900)
"akiyama"	"2101"	"本当にあった!特殊兵器大図鑑"	"2017-05-17 17:17:40 +0900"	"2017-05-17 23:59:59 +0900"
"user1206"	"3117"	"天下人の茶"	"2017-02-23 10:27:29 +0900"	"2017-03-25 23:59:59 +0900"
"yuka"	"567009"	"ドリーム・ギバー : 夢紡ぐ精霊たち"	"2015-12-20 11:54:10 +0900"	"2016-12-20 23:59:59 +0900"
</pre>

</div>

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[RSS]をクリックすると延滞しているすべての資料の貸出履歴をRSS表示します。

<div class="alert alert-success memo" markdown="1">

【Column】RSSの例

![TSVファイル](../assets/images/1.1/image_operation_210_rss_d.png)

</div>

</div>

6-5 相互貸借をする {#section6-5}
---------------------------------

Enjuでは、NACSIS-ILL、ゆにかねっとの利用を検討しています（[issue #617](https://github.com/next-l/enju_leaf/issues/617)）。

{% include enju_operation/toc.md %}
