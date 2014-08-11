---
layout: page
title: 第12章 印刷その他の機能を利用する - Next-L Enju 運用マニュアル
title_short: 第12章 印刷その他の機能を利用する
group: enju_operation
---

第12章 印刷その他の機能を利用する
=================================

Enjuではさまざまなバーコード印刷機能やブックマークなど、図書館の運用に便利な機能が搭載されています。

* バーコードや背表紙ラベルを印刷する
* ブックマークを活用する

{::comment}12-1  enju_operation/print.md {:/comment}
{::comment}12-2  enju_operation/bookmark.md {:/comment}


<a name="12-1" />

12-1 印刷機能を利用する
-----------------------
<div class="alert alert-info">【Memo】Next-L Enju Leaf 1.1.0.rc9 時点ではこの機能は未実装です。今のところ実装のめどは立っていません。
</div>

Enjuでは、資料に貼るバーコードや背表紙ラベルを印刷できます。

<a name="12-1-1" />

### 12-1-1 バーコード印刷する

Enjuでは、資料に貼るバーコードを印刷できます。

<a name="12-1-2" />

### 12-1-2 背表紙ラベルを印刷する

Enjuでは、資料の背表紙に貼るラベルを印刷できます。

<a name="12-2" />

12-2 ブックマークを活用する
---------------------------

<div class="alert alert-info" markdown="1">【Memo】
この機能は現在開発中です。また、この機能は標準では使えない機能です。この機能を使うためには、インストールマニュアルの「[5-2 [enju_bookmark]モジュール（ブックマーク機能）](enju_install_vm_5.html#5-2)」を参照してモジュールをインストールする必要があります。
</div>

頻繁に閲覧する資料は、ブラウザの「ブックマーク」と同様に、Enjuでも「ブックマーク
」として登録しておくことができます。


{::comment}

<a name="12-2-1" />

### 12-2-1 ブックマークを追加する

3. ブックマークしたい資料を検索します。
トップページの検索語に登録したい資料のキーワードを入力し、
［検索］ボタンをクリックします
   ![検索機能を使用](assets/images/image_operation_286.png)
4. ブックマークしたい資料をクリックします。  
   ![ブックマークしたい資料をクリック](assets/images/image_operation_288.png)
5. 目的の資料を表示し、右メニューの［ブックマークに追加する］をクリックします。  
   ![ブックマークに追加する](assets/images/image_operation_290.png)
6. 必要に応じてタグなどを入力し、［登録］ボタンをクリックします。  
   ![ブックマークを作成](assets/images/image_operation_291.png)
7. 「ブックマークは正常に作成されました。」のメッセージが表示され、ブックマークが作成されます。
    ![ブックマークを作成されました](assets/images/image_operation_291_2.png)

<a name="12-2-2" />

### 12-2-2 ブックマークを表示する

1. トップページの［ブックマーク］をクリックします。  
   ![ブックマーク](assets/images/image_operation_bookmark.png)
2. ブックマークの一覧が表示されます。  
   ![ブックマーク一覧](assets/images/image_operation_294.png)

	<div class="alert alert-info">【Memo】ブックマークの数が多い場合は、検索語でブックマークを絞り込むことができます。また、登録されたブックマークを削除したい場合は、［削除］をクリックします。
	</div>
{:/comment}


{% include enju_operation/toc.md %}
