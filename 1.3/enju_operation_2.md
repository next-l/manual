---
layout: page
title: 第2章 Enjuを利用する - Next-L Enju 運用マニュアル
title_short: 第2章 Enjuを利用する
group: enju_operation
version: 1.3
---

* Contents
{:toc}

第2章 Enjuを利用する {#section2}
================================

Enjuの利用を始めるにあたり、次のような作業を行います。

* ユーザーアカウントの作成
* ログイン／ログアウト
* ユーザーアカウントの編集

Enjuは、利用者にメッセージを送信する機能も搭載されています。

* メッセージの送信
* メッセージのログの一覧表示・印刷

{::comment}2-1 enju_operation/role.md {:/comment}
{::comment}2-2 enju_operation/login.md {:/comment}
{::comment}2-3 enju_operation/message.md {:/comment}

2-1 ユーザーアカウントの種類を知る {#section2-1}
-------------------------------------------------

### 2-1-1 アカウント（ユーザー）の種類 {#section2-1-1}

Enjuを利用するには、アカウントを取得し、ログインします。アカウント（ユーザー）には次の3種類があります。

* Administrator（管理者）
* Librarian（図書館員）
* User（図書館利用者）

注：この3種類のことを、3つの権限と呼ぶこともあります。

注：検索するだけであれば、ログインしなくても、Enjuを利用可能です。 
Enju ではそのようなログインしないユーザーの権限のことをGuest権限と呼んでいます。

### 2-1-2 Librarian（図書館員）の権限で利用できる機能 {#section2-1-2}

Librarian（図書館員）の権限を持つアカウントでログインすると、Enjuで次のような機能を利用することができます。

* 図書館利用者としてのすべての機能
* 図書館利用者の登録
* 資料の受入
* 資料の貸出／返却／予約
* 催し物（お知らせ）の登録
* 開館日（休館日）の登録
* レファレンスの処理
* 統計機能
* 印刷その他の機能

<div class="alert alert-info memo">
【Memo】Librarian（図書館員）はアカウントの権限を変更することができません。権限の変更は、Administrator（管理者）権限を持つアカウントでログインして行います。
</div>

### 2-1-3 アカウントを編集する {#section2-1-3}

アカウントの権限以外の項目の編集はLibrarian（図書館員）でも行うことができます。
操作の方法については、[「3-3 利用者情報を変更する」](enju_operation_3.html#section3-3)
を参照してください。

2-2 ログイン／ログアウトする {#section2-2}
------------------------------------------

Enjuを利用するには、まずシステムにログインします。

### 2-2-1 ログインする {#section2-2-1}

#### 1. Enjuにアクセスし、［ログイン］をクリックします。  

![Enju初期画面](../assets/images/1.1/image_operation_003.png)

#### 2. ユーザー名とパスワードを入力し［ログイン］をクリックします。  

![Enjuログイン](../assets/images/1.1/image_operation_005.png)

<div class="alert alert-info memo">【Memo】ブラウザを閉じてもログイン状態を保持したい場合は、［ウィンドウを閉じてもログインしたままにする］をオンにします。
</div>

<div class="alert alert-info memo" markdown="1">

【Memo】[パスワードを忘れましたか？」のリンクをたどった先の画面で、
メールアドレス（Enjuに登録した自分のメールアドレス）を入れて、
[パスワードを再発行する]ボタンをクリックすると、
再発行されたパスワードがメールで送られてきます。
但し、[メールサーバーの設定（インストールマニュアル 4-4-3節参照）](enju_install_vm_4.html#section4-4-3)があらかじめ必要です。

</div>

#### 3. 自分のアカウントでログインされていることを確認します。  

![Enjuログイン中](../assets/images/1.1/image_operation_007.png)

### 2-2-2 ログアウトする {#section2-2-2}

#### 1. ［ログアウト］をクリックします。  

![Enjuログアウト](../assets/images/1.1/image_operation_009.png)

#### 2. ログアウトされたこと（［ログイン］の表示に変わったこと）を画面で確認します。  

![Enjuログアウト後](../assets/images/1.1/image_operation_011.png)

<div class="alert alert-info">
【Memo】時間の経過にともなって自動ログアウトする機能は用意されていません。
Librarian（図書館員Librarian）は，
利用者の個人情報などを閲覧できる権限を持っているので，
パソコンを共有する時や離席時などには、
きちんとログアウトするよう心がけましょう。
</div>

### 2-2-3 パスワードを変更する {#section2-2-3}

ログインしている本人のパスワードを変更する場合は、
[初期設定マニュアル「2-2-2 パスワードを変更する」](enju_setup_2.html#section2-2-2)
を参照してください。

他の利用者のパスワードを変更する場合は、
[「3-3 利用者情報を変更する」](enju_operation_3.html#section3-3)
を参照してください。

2-3 メッセージをやり取りする {#section2-3}
------------------------------------------

Enjuのメッセージ機能を利用して、利用者にメッセージを送信することができます。

### 2-3-1 利用者を検索してメッセージを送信する {#section2-3-1}

#### 1. ［図書館の管理］メニューから［利用者の管理］を選択します。  

![利用者の管理](../assets/images/1.1/image_operation_user.png)

#### 2. メッセージを送りたいユーザのユーザ名をクリックします。  

![ユーザ名をクリック](../assets/images/1.1/image_operation_015.png)

<div class="alert alert-info memo">【Memo】［検索語］にユーザ名や利用者番号を入力して、ユーザを検索することもできます。
</div>

#### 3. 右メニューの［メッセージを送信する］をクリックします。  

![メッセージを送信する](../assets/images/1.1/image_operation_017.png)

#### 4. 件名、本文を入力し、［メッセージを送信する］ボタンをクリックします。  

![メッセージ送信](../assets/images/1.1/image_operation_018.png)

### 2-3-2 利用者のユーザー名を入力してメッセージを送信する {#section2-3-2}

#### 1. ［アカウント］の左にあるメールアイコンをクリックします。  

![メールアイコンをクリック](../assets/images/1.1/image_operation_020_1.png)

#### 2. 右メニューの[メッセージの新規作成]をクリックします。 

![メッセージの新規作成リンク](../assets/images/1.1/image_operation_020_2.png)

#### 4. 宛先（ユーザー名）、件名、本文を入力し、［メッセージを送信する］ボタンをクリックします。  

![メッセージ送信](../assets/images/1.1/image_operation_020_3.png)

<div class="alert alert-info memo">【Memo】
右メニューの[メッセージの一覧]リンクをクリックするとメッセージの一覧に戻ります。
</div>

### 2-3-3 受信したメッセージを読む {#section2-3-3}

{::comment} 
注意！ ここの内容は 

_includes/enju_read_message.md と enju_read_message_admin.md

の内容を編集してください 
{:/comment}

{% include enju_read_message.md %} 

{% include enju_read_message_admin.md %} 

### 2-3-4 メッセージを削除する {#section2-3-4}

{::comment} 
注意！ ここの内容は 

_includes/enju_rm_message.md

の内容を編集してください 
{:/comment}

{% include enju_rm_message.md %} 

{% include enju_operation/toc.md %}
