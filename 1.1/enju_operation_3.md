---
layout: page
title: 第3章 利用者情報を管理する - Next-L Enju 運用マニュアル
title_short: 第3章 利用者情報を管理する
group: enju_operation
---

* Contents
{:toc}

第3章 利用者情報を管理する {#section3}
==========================

図書館の利用者情報管理には、次のような機能があります。

* 利用者情報を新規作成する
* 既存のデータから利用者情報をインポートする
* 利用者情報を変更する（編集する）
* 利用者情報を削除する
* 利用者情報を表示する
* 利用者を検索する
* 利用者情報を別システムで管理する
* 利用者情報のエクスポートをする

利用者情報で入力できる項目は、次の表に示す通りです。
表の「新規」列に○があるものは新規作成で入力できる項目です。
「編集」列に○や◎があるものは変更（編集）の際に入力できる項目です。
◎があるものは一般ユーザーが自身の利用者情報編集機能で入力できる項目です。
「権限」項目はAdministrator権限でログインした時のみ入力できる項目なので△になっています。


<!--
* アカウント情報  
  利用者番号、ユーザ名、有効期限、利用者グループ、権限、既定の図書館、情報参照権限、言語
* プロフィール情報（バージョンによっては入力できないものもあります）  
  メールアドレス、フルネーム（漢字）、フルネーム（ヨミ）、生年月日、住所等（郵便番号、住所、電話番号、FAX番号
-->

<table class="table table-bordered table-condensed table-striped">
<caption>利用者情報</caption>
<thead>
<tr><th>新規</th><th>編集</th><th>項目名</th><th>説明</th></tr>
</thead>
<tbody>
<tr><td>○</td><td></td><td>ユーザ名</td><td>任意のユーザ名です。半角英数で入力します。</td></tr>
<tr><td>○</td><td>◎</td><td>メールアドレス</td><td>連絡先メールアドレスを入力します。メールアドレスを登録しておくと、パスワードを忘れた時に、再設定されたパスワードを送信する機能が使えるようになります。予約の取り置きのメールのお知らせがくるようになります(※ Enju Leaf 1.1.0 ではこの機能は動作しません（詳細 <a href="https://github.com/next-l/enju_leaf/issues/1016">issue #1016</a>)。 書誌詳細（「書誌情報を電子メールで送信する」リンク）で書誌をメールに送れるようになります。インポート・エクスポート・利用統計の集計の完了通知が来るようになります（管理者権限のみ）。</td></tr>
<tr><td></td><td>○</td><td>パスワードの自動生成</td><td>自動生成したパスワードを設定するかどうか。チェックをいれて[更新する]とすると、自動生成したパスワードを設定し、更新後の画面で表示します。</td></tr>
<tr><td>○</td><td>○</td><td>有効期限</td><td>ユーザの有効期限です。書式：yyyy-mm-dd</td></tr>
<tr><td></td><td>○</td><td>利用不可</td><td>ユーザアカウントを有効にするかどうかです。チェックを入れると利用不可になります。</td></tr>
<tr><td></td><td>△</td><td>権限</td><td>User, Librarian, Administratorがあります。Administrator権限でログインしたときのみ権限の変更ができます。</td></tr>
<tr><td>○</td><td>◎</td><td>フルネーム</td><td>利用者の氏名を入力します。表示に使われます（主に、図書館職員の管理用に用いられます）。</td></tr>
<tr><td>○</td><td>◎</td><td>フルネーム（ヨミ）</td><td>利用者の氏名のヨミをカタカナで入力します。</td></tr>
<tr><td>○</td><td>○</td><td>利用者グループ</td><td>貸出冊数や期間などの条件を設定した利用者グループです。利用者グループを選択します。例えば、一般利用者、在勤・在学利用者、団体利用者など。利用者グループの作成や詳細については、<a href="enju_setup_3.html#section3-4">設定マニュアルの「3-4 利用者グループを設定する」</a>を参照してください。</td></tr>
<tr><td>○</td><td>○</td><td>利用者番号</td><td>利用者番号です。一般的には、利用者カードのバーコード番号などに利用します。</td></tr>
<tr><td>○</td><td>○</td><td>図書館</td><td>利用者既定の図書館名を設定します。書誌詳細で請求記号の背ラベル表示の際に使用されます。Librarian権限以上の場合は、書誌・所蔵・イベント・利用者情報等のインポートファイルのデフォルト所属図書館の指定に利用されます。</td></tr>
<tr><td></td><td>○</td><td>参照に必要な情報</td><td>プロフィールをどの権限の利用者にまで公開するかを指定します。</td></tr>
<tr><td>○</td><td>◎</td><td>言語</td><td>表示する言語を選ぶことができます。標準では、日本語と英語が選択可能です。</td></tr>
<tr><td></td><td>◎</td><td>キーワードリスト</td><td>ログインしたときに表示される「ピックアップ」資料は、このキーワードリストに入れたキーワードに関連したものを優先して表示します。</td></tr>
<tr><td></td><td>◎</td><td>貸出期限通知用のicalendar url</td><td>貸出期限通知に利用するicalendarのURL（リセットまたは削除）。デフォルトは未設定です。こちらを「リセット」して表示して表示したURLを使うことで、自身のカレンダーソフトに「貸出期限」などが表示されるように設定できます。アクセスに認証をともなわないので、このURLを他者に知られないように注意する必要があります。</td></tr>
<tr><td>○</td><td>◎</td><td>貸出の履歴を保存する</td><td>チェックを入れると、現在借りている本だけでなく、返却した本の記録を閲覧できるようになります。ただし、チェックを入れる前の返却本は表示されません。</td></tr>
<tr><td>○</td><td>○</td><td>注記</td><td>注記です。備考等を入力します。</td></tr>
</tbody>
</table>


{::comment}3-1  enju_operation/user_new.md {:/comment}
{::comment}3-2  enju_operation/user_import.md {:/comment}
{::comment}3-3  enju_operation/user_edit.md {:/comment}
{::comment}3-4  enju_operation/user_profile.md {:/comment}
{::comment}3-5  enju_operation/user_delete.md {:/comment}
{::comment}3-6  enju_operation/user_search.md {:/comment}
{::comment}3-7  enju_operation/user.md {:/comment}

3-1 利用者情報を新規作成する {#section3-1}
----------------------------

利用者情報を１件ずつ登録するには、利用者の新規作成を行います。［図書館の管理］メニューから行います。

#### 1. ［図書館の管理］メニューから［利用者の管理］を選択します。  

![利用者の管理](assets/images/image_operation_user.png)

#### 2. 右メニューの［利用者の新規作成］をクリックします。  

![利用者の新規作成](assets/images/image_operation_031.png)

#### 3. 必要事項を入力して［利用者を登録する（取り消しはできません）］ボタンをクリックします。  

![利用者を登録する](assets/images/image_operation_033.png)

<div class="alert alert-info memo" markdown="1">【Memo】「*」のマークが付いた項目は入力必須項目です。また、登録の取り消しはできません。取り消しを行いたい場合は、利用者の削除を行います。（参照：[3-4 利用者を削除する](#section3-4)）
</div>

#### 4. 利用者が作成され、仮パスワードが発行されます。  

![仮パスワードが発行](assets/images/image_operation_034.png)

3-2 既存のデータから利用者情報をインポートする {#section3-2}
------------------------------------------------------------

既存の利用者データがファイルで存在する場合は、インポートと呼ぶ読み込みを行い、利用者情報に取り込めます。インポートするには、あらかじめファイルをTSV形式で作成しておく必要があります。

### 3-2-1 TSVファイルの作成 {#section3-2-1}

TSVファイルとは、項目をタブで区切ったテキストファイルです。サンプルファイルは、[user_import_file_sample.tsv](https://github.com/next-l/enju_leaf/blob/1.1/examples/user_import_file_sample.tsv)を参照してください。Enjuで利用するTSVファイルでは、1行目にそれぞれの項目に関わるフィールド名を指定します。フィールド名および値は原則として " " で囲みます。
フィールド名とその意味については次の通りです。

#### ■利用者情報の項目

{::comment}![利用者情報の項目](assets/images/image_operation_041.png)
{:/comment}

<table class="table table-bordered table-condensed table-striped">
<caption>利用者情報の項目</caption>
<thead>
<tr>
<th>フィールド名</th>
<th>データ形式</th>
<th>内容</th>
<th>未入力の場合（作成時）</th>
</tr>
</thead>
<tbody>
<tr>
<td>username</td><td>ascii</td><td>ユーザ名（入力必須）</td><td>（インポートが「失敗」になる）</td>
</tr>
<tr>
<td>password</td><td>ascii</td><td>パスワード（入力推奨）：登録しなければ、登録
直後は利用不能／後日adminが指定するしかない</td>
<td>未設定</td>
</tr>
<tr>
<td>full_name</td><td>utf8</td><td>フルネーム</td><td>未設定</td>
</tr>
<tr>
<td>full_name_transcription</td><td>utf8</td><td>フルネーム（ヨミ）</td><td>未設定</td>
</tr>
<tr>
<td>user_number</td><td>ascii</td><td>利用者番号（数字以外にアルファベットも使用可能）</td>
<td>未設定</td>
</tr>
<tr>
<td>email</td><td>ascii</td><td>メールアドレス：2つ以上入力したい場合は注記（note）に書くしかない</td><td>未設定</td>
</tr>
<tr>
<td>library</td><td>code</td><td>既定の図書館</td>
<td>インポート時に「既定の図書館」として指定した図書館</td>
</tr>
<tr>
<td>user_group</td><td>code</td><td>利用者グループ※1</td><td>インポート時に「既定の利用者グループ」として指定した利用者グループ</td>
</tr>
<tr>
<td>locale</td><td>code</td><td>（使用）言語(日本語の場合：ja,　英語の場合：en) ※2</td><td>ja</td>
</tr>
<tr>
<td>role</td><td>code</td><td>権限（Guest, User, Librarian, Administrator ）</td>
<td>User</td>
</tr>
<tr>
<td>expired_at</td><td>ISO8601</td><td>有効期限（2011-01-30　のような形式）</td>
<td>未設定</td>
</tr>
<tr>
<td>checkout_icalendar_token</td><td>ascii</td><td>貸出期限のicalendar urlに使うトークン</td>
<td>未設定</td>
</tr>
<tr>
<td>save_checkout_history</td><td>ascii</td><td>貸出の履歴を保存するかどうか。t または　TRUE または trueなら真（保存する）。</td>
<td>FALSE</td>
</tr>
<tr>
<td>locked</td><td>ascii</td><td>利用不可のアカウントにするかどうか。t または　TRUE または trueなら真（利用不可にする）。</td>
<td>FALSE</td>
</tr>
<tr>
<td>required_role</td><td>code</td><td>参照に必要な権限（Guest, User, Librarian, Administrator ）</td>
<td>Librarian</td>
</tr>
<tr>
<td>keyword_list</td><td>utf8</td><td>キーワードリスト。//で区切る。</td>
<td>未設定</td>
</tr>
<tr>
<td>save_search_history</td><td>ascii</td><td>資料の検索履歴をデータベースに保存するかどうか。t または　TRUE または trueなら真（保存にする）。 ※3</td>
<td>FALSE</td>
</tr>
<tr>
<td>share_bookmarks</td><td>ascii</td><td>ブックマークが他のユーザから参照できるかどうか。t または　TRUE または trueなら真（参照可にする）。※4</td>
<td>FALSE</td>
</tr>
<tr>
<td>note</td><td>utf8</td><td>注記</td>
<td>未設定</td>
</tr>
<tr>
<td>dummy</td><td>utf8</td><td>ダミー行の指定（なにかを書いているとその行は無視する行と判定される）</td>
<td>（読み込まれる行と判定される）</td>
</tr>
</tbody>
</table>

※1 利用者のグループの[名前]については初期設定マニュアルの「[3-4 利用者グループを設定する](enju_setup_3.html#section3-4)」を参照ください。

※2 環境によっては異なることがあります。
使用できるものに何があるかは，[「初期設定マニュアル  7-1 システムの基本的な情報の表示」](enju_setup_7.html#section7-1)機能でわかります。

※3 注意：[モジュール enju_search_log をインストールした場合](enju_install_vm_5.html#section5-6)にのみ使用できます。インストールしていない場合は、無視されます。

※4 注意：[モジュール enju_bookmark をインストールした場合](enju_install_vm_5.html#section5-5)にのみ使用できます。インストールしていない場合は、無視されます。

{::comment}
### ■個人情報に関わる項目
![個人情報に関わる項目](assets/images/image_operation_042.png)
{:/comment}

### 3-2-2 TSVファイルのインポート {#section3-2-2}

#### 1. ［図書館の管理］メニューから［インポート］を選択します。  

![利用者の管理](assets/images/image_operation_import.png)

#### 2. ［利用者アカウント］をクリックします。  

![利用者のTSVファイルからのインポート](assets/images/image_operation_037.png)

#### 3.  右メニューの[利用者のインポート用ファイルの新規作成]を選択します。

![利用者のTSVファイルからのインポート（新規作成）](assets/images/image_operation_037_2.png)

#### 4. ［ファイルを選択］ボタンをクリックしてインポート用のファイルを選択します。  

![利用者のTSVファイルを選択](assets/images/image_operation_039_1.png)

#### 5. [編集モード]、[文字コード]、[既定の利用者グループ]、[既定の図書館]を選択して［インポートを開始］ボタンをクリックします。
 
![利用者のTSVファイルファイルを作成](assets/images/image_operation_039_2.png)

<div class="alert alert-info memo">【Memo】［編集］モードで［更新］を選択すると、TSVファイルで利用者情報をまとめて更新できます。TSVファイルに必要なのは、更新したい利用者のユーザ名（<code>username</code>）と、更新したいフィールドの内容になります。また、［削除］を選択すると、TSVファイルで利用者情報をまとめて削除できます。この場合は、TSVファイルに必要なのは、削除したい利用者のユーザ名（<code>username</code>）のみです。
</div>

<div class="alert alert-info memo">【Memo】[文字コード]は基本的には自動判別でよいですが、うまくいかない場合は、文字コードを指定するようにしてください。
</div>

<div class="alert alert-info memo">【Memo】[既定の利用者グループ]や[既定の図書館]は、TSVファイルに[利用者グループ]（user_group列）や[図書館]（library列）の値がない場合やTSVファイルで当該値に無効な値を指定していた場合に登録される値となります。TSVファイルに有効な値が指定されていた場合はTSVファイルを優先します。プルダウンメニューのデフォルト値は、現在ログイン中のユーザの利用者グループと図書館です。 
</div>

#### 4. 「利用者のインポート用ファイルは正常に作成されました。」のメッセージが表示され、利用者のデータがインポートの準備が整います。 右の[利用者のインポート用ファイルの一覧] をクリックします。

![利用者のインポート用ファイルの表示](assets/images/image_operation_040_2.png)

#### 5. 今までのインポート結果の一覧が表示されます。[状態]を見ると処理結果がわかります。インポートが完了したものは[完了]と表示されます。[処理待ち]のものは現在、実行中です。インポート完了時にはEnjuのメッセージ機能にてお知らせします（「インポートが完了しました」というメッセージが送られてきます）。注）Next-L Enju Leaf 1.1.0.rc12以前のバージョンの場合は毎時0分にインポート処理が開始します。 

![利用者のインポート結果の一覧](assets/images/image_operation_040_3.png)

<div class="alert alert-info memo">【Memo】この画面は[図書館の管理]メニュー→[インポート]→[利用者アカウント]とすればいつでも閲覧できます。
</div>

### 3-2-3 失敗した場合について {#section3-2-3}

TSVファイルになんらかのエラーがありインポートの状態が[失敗]となることがあります。状態が[失敗]となった場合は、Enju Leaf 1.1.0と1.1.1の場合は、エラーのあった行以降のレコードが登録されていませんので、エラーを修正して、エラー行以降のファイルを作成してインポートする必要があります。Enju Leaf 1.1.2 以降の場合は、エラーのあった行のレコードは登録されていませんので（詳細 [issue #1038](https://github.com/next-l/enju_leaf/issues/1038)）、エラーのあった行のみを抜き出してエラーを修正して再度登録する必要があります。

#### 1. ［図書館の管理］メニューから［インポート］を選択します。  

![利用者の管理](assets/images/image_operation_import.png)

#### 2. ［利用者アカウント］をクリックします。  

![利用者のTSVファイルからのインポート](assets/images/image_operation_037.png)

#### 3. インポートの状態が[失敗]の[表示]をクリックします。

![TSVインポートに失敗](assets/images/image_operation_041_2.png)

#### 4. [エラーメッセージ]にエラーの行とエラーの内容が表示されていますので、内容を確認します。次の例では3行目のレコードにどこか問題があるようです。[ファイル名]をクリックしてTSVファイルをダウンロードします。

![エラーメッセージ](assets/images/image_operation_041_3.png)

#### 5. 該当行のエラーを修正し、ヘッダ行とエラーのあった行以降のレコードが入ったTSVファイルを作成し、インポートをします。

3-3 利用者情報を変更する（編集する） {#section3-3}
--------------------------------------------------

登録した利用者情報は、必要に応じてあとから変更できます。ただし、Librarian権限でログインしている場合は権限の変更は行えません。

<div class="alert alert-info" markdown="1">

【Memo】編集したい利用者情報が書かれたTSVファイルを用いて、複数の利用者情報をまとめて編集することもできます。TSVを用いた利用者情報の編集のやり方の詳細については、[「3-2 既存のデータから利用者情報をインポートする 」](#section3-2)を参照してください。

</div>

#### 1. ［図書館の管理］メニューから［利用者の管理］を選択します。  

![利用者の管理](assets/images/image_operation_user.png)

#### 2. 情報を変更したい利用者の［編集］をクリックします。  

![利用者情報の編集](assets/images/image_operation_045.png)

<div class="alert alert-info" markdown="1">

【Memo】利用者番号や、[表示]をクリックした先の画面の右メニューの[編集]をクリックすることでも編集画面に遷移します。

</div>

#### 3. 属性を編集し［更新する］をクリックします。  

![利用者情報を更新](assets/images/image_operation_047.png)

<div class="alert alert-info">【Memo】「*」のマークが付いた項目は入力必須項目です。
</div>

#### 4. 「利用者は正常に更新されました。」のメッセージが表示され、利用者の情報が変更されます。 [自動生成したパスワードを設定する]にチェックをいれていた場合は、自動生成したパスワードが表示されます。

![利用者情報の更新結果](assets/images/image_operation_048.png)

{::comment}

Enju Leaf 1.1.0 ではプロフィール情報として独立した画面ではないので、
ここはコメントアウトしておく。

利用者のプロフィール情報を変更する {#section3-x}
----------------------------------------------------

利用者の氏名や生年月日などを登録したり変更したりする機能です。

<div class="alert alert-info memo">
【Memo】
Next-L Enju Leaf x.x.x.x 以降ではこの機能はありません
開発予定はありますが、開発時期は未定です。
</div>



登録した利用者のプロフィール情報は、必要に応じてあとから変更できます。変更できるプロフィール情報は次の通りです。

* 姓（漢字と読み）	姓と姓のよみ
* 名（漢字と読み）	名と名のよみ
* フルネーム（漢字と読み）	フルネームとフルネームのよみ
* 生年月日／没年月日	生年月日と没年月日
* 言語	使用する言語
* 国と地域	国と地域
* 電子メール	電子メールアドレス
* URL	ブログやホームページのURL
* 参照に必要な権限	参照に必要な権限
* 郵便番号（最大2つ）	［他の住所］をクリックすると、最大2つまで登録可能
* 住所（最大2つ）	［他の住所］をクリックすると、最大2つまで登録可能
* ファックス番号（最大2つ）	［他の住所］をクリックすると、最大2つまで登録可能
* 注記	注記

#### 1. ［図書館の管理］メニューから［利用者の管理］を選択します。  

![利用者の管理](assets/images/image_operation_user.png)

#### 2. 属性を変更したいユーザの［プロフィールの編集］をクリックします。  

![プロフィールの編集](assets/images/image_operation_050.jpg)

#### 3. 姓、名などを編集します。  

![利用者の編集](assets/images/image_operation_051.jpg)

<div class="alert alert-info">【Memo】「*」のマークが付いた項目は入力必須項目です。生年月日や没年月日は「YY-MM-DD」の6桁の数字で入力します。
</div>

#### 4. 住所などの情報も編集し、［更新する］をクリックします。  

![利用者を更新](assets/images/image_operation_053.jpg)

<div class="alert alert-info">【Memo】Librarianがプロフィールを変更できるのはUser権限のユーザのみです。
</div>

#### 5. 「利用者は正常に更新されました。」のメッセージが表示され、利用者のプロフィール情報が変更されます。  

![利用者は正常に更新されました](assets/images/image_operation_054.jpg)

<div class="alert alert-info">【Memo】[図書館の管理] → [インポート] → [利用者]の画面の［編集］モードで［更新］を選択すると、TSVファイルでプロフィール情報をまとめて変更できます。この場合、TSVファイルでは更新したい利用者の利用者番号（user_number）と更新したいフィールドの内容のみを埋めておくようにします。
</div>

{:/comment}

3-4 利用者情報を削除する {#section3-4}
--------------------------------------

登録した利用者情報は、不要になった際に削除できます。

<div class="alert alert-info" markdown="1">

【Memo】削除したい利用者情報が書かれたTSVファイルを用いて、複数の利用者情報をまとめて削除することもできます。TSVを用いた利用者情報の削除のやり方の詳細については、[「3-2 既存のデータから利用者情報をインポートする 」](#section3-2)を参照してください。

</div>

#### 1. ［図書館の管理］メニューから［利用者の管理］を選択します。  

![利用者の管理](assets/images/image_operation_user.png)

#### 2. 削除したい利用者の［編集］をクリックします。  

![利用者情報の編集](assets/images/image_operation_057.png)

#### 3. 右メニューの［削除］をクリックします。  

![削除](assets/images/image_operation_059.png)

#### 4. メッセージが表示されたら［OK］をクリックします。  

![OK](assets/images/image_operation_061.png)

{::comment}     <div class="alert alert-info memo">【Memo】利用者情報を削除しても、人物・団体としての情報は削除されません>。いったん削除した利用者が新たに利用登録を行う場合は、利用者番号を再度割り振ります。利用者番号を再度割り振るには、再>登録を行いたい人物のプロフィール情報を表示し、右メニューの［利用者として登録する］をクリックします。 </div>{:/comment}

3-5 利用者情報を表示する {#section3-5}
--------------------------------------

利用者の一覧を、画面上で表示し、利用者情報を表示することができます。

#### 1. ［図書館の管理］メニューから［利用者の管理］を選択します。  

![利用者の管理](assets/images/image_operation_user.png)

#### 2. 利用者一覧が表示されます。詳細を知りたい利用者の[利用者番号]のリンクをクリックします。一覧に利用者が表示されない場合は、検索することもできます。検索する方法は 次の節を参照してください。

![利用者一覧](assets/images/image_operation_068.png)

#### 3. 当該利用者の利用者情報が表示されます。

![利用者の詳細情報](assets/images/image_operation_068_2.png)

<div class="alert alert-info memo" markdown="1">
【Memo】

* 貸出の表には、貸出情報が表示されます。「貸出の履歴を保存する」にチェックが入っていた場合は、返却後の貸出履歴も表示されます。
* 右メニューにある「図書 : 1/ 10」は、「借りている本の数 / 借りられる上限数」を表しています。
* 右メニューの[編集]リンクをたどると、編集画面へ遷移します。本表示画面に表示されていない項目（メールアドレスなど）も編集画面で内容を確かめることができるものがあります。
* 右メニューの[メッセージを送信する]リンクをたどると、当該利用者へのメッセージ送信画面へ遷移します。
* 右メニューの[利用者の新規作成]リンクをたどると、利用者の新規作成画面へ遷移します。
* 右メニューの[貸出の一覧]リンクをたどると、貸出の一覧画面へ遷移します。※バージョン1.1.0,1.1.1では[貸出]リンクとなっています。
* 右メニューの[予約の一覧]リンクをたどると、予約の一覧画面へ遷移します。※バージョン1.1.0,1.1.1では[予約]リンクとなっています。
* 右メニューの[購入リクエストの一覧]リンクをたどると、購入リクエストの一覧画面へ遷移します。※バージョン1.1.0,1.1.1では[購入リクエスト]リンクとなっています。
</div>

3-6 利用者を検索する {#section3-6}
----------------------------------

Enjuに登録されている利用者は、検索語（キーワード）で検索することができます。

#### 1. ［図書館の管理］メニューから［利用者の管理］を選択します。  

![利用者の管理](assets/images/image_operation_user.png)

#### 2. 検索語を入力して［検索］をクリックします（ユーザ名や利用者番号は完全一致するものがヒットします。フルネームは部分一致するものがヒットします）。

![検索](assets/images/image_operation_064.png)

#### 3. 該当する利用者が表示されます。  

![利用者の表示](assets/images/image_operation_066.png)

3-7 利用者情報を別システムで管理する {#section3-7}
--------------------------------------------------

Enjuで扱えない利用者情報を別のシステムで管理して、別システムで検索した利用者情報から、Enjuの利用者詳細画面につなげる方法を説明します。
Enjuのカスタマイズをすることなく、必要な利用者情報を管理できるようになります。

ここでは簡便なやり方として、MS Excelを使ったやり方を説明しますが、Accessや他のアプリケーションでも同様にできます。（注意：Excelファイルにパスワードを掛けるなど、漏えい対策に気を付けてください）

#### 1. 利用者情報のExcel ファイルを作ります。

例えば、Excelでこのようなファイルをつくります

![Excelファイルの例](assets/images/image_userinfo_local_001.png)

このファイルで、生年月日や住所などEnjuに入力していない情報で利用者の情報を検索して、本人確認のための利用者情報を調べることができますし、URLのリンクをたどれば、その利用者のページにたどりつけます。

サンプルファイルは、
[Next-L公式サイト](http://www.next-l.jp/?page=etc%5Ffiles&file=userinfo%5Flocalfile%5Fsample%2Exlsx&action=ATTACH)
にありますので、参考にしてください。ここで用いている情報は架空のものです。

例えば、「ユーザ名」が 「u550001」 であれば、以下のようなURLを書けば
そのユーザ名の詳細画面に行くリンクになります。「localhost:8080」のところは適宜、書き換えてください。
（例えば、デモサーバーであれば、 「enju.next-l.jp」になります。）

    http://localhost:8080/profiles?username=u550001


#### 2. 作成したExcelファイルを使い、利用者情報の閲覧し、リンクをたどる

作成した、Excelファイルを使って、利用者の生年月日等で本人確認を行い、
ユーザ名を知ることができます。

「リンク」列の当該「ユーザ名」のリンクをたどります。

![リンクをたどる](assets/images/image_userinfo_local_001_2.png)

#### 3. Enjuの当該利用者の情報の画面に遷移できます。

![該当利用者のページ](assets/images/image_userinfo_local_002.png)

#### 4. トラブルシューティング：リンクをクリックしてもトップページに飛んでしまう場合

Enjuのサーバーの設定が必要です。1回だけ必要です。

    $ cd enju
    $ vi Gemfile
    
として、Gemfile の最後に以下の行を追加

    gem "fix_microsoft_links"

ファイルを保存

    $ bundle update
    $ sudo restart enju_leaf

として、Enjuを再起動。

3-8 利用者情報のエクスポートをする {#section3-8}
-------------------------------------------------

Administrator権限のユーザーでログインしている場合は、
登録されている全ての利用者情報をTSVとしてエクスポートすることができます。

#### 1. ［図書館の管理］メニューから［エクスポート］を選択します。  

![エクスポート](assets/images/image_operation_export_admin.png)

※ Administrator 権限でログインしておく必要があります。

#### 2. [利用者情報のエクスポート]リンクをクリックします。

![利用者情報のエクスポート](assets/images/image_operation_export_user_1.png)

※　Administrator 権限ログインしていない場合は[利用者情報のエクスポート]リンクが表示されません。

#### 3. 右メニューの[利用者情報のエクスポートの新規作成]リンクをクリックします。

![利用者情報のエクスポートの新規作成](assets/images/image_operation_export_user_2.png)

#### 4. [エクスポート]ボタンをクリックします。

![エクスポート](assets/images/image_operation_export_user_3.png)

#### 5. 「利用者情報のエクスポート処理は正常に作成されました」のメッセージが表示され、利用者情報のデータエクスポートの準備が整いました。右の[利用者情報蔵のエクスポートの一覧]をクリックします。 

![エクスポートの表示](assets/images/image_operation_export_user_4.png)

#### 6. 今までのエクスポート結果の一覧が表示されます。[状態]を見ると処理結果がわかります。エクスポートが完了したものは[完了]と表示されます。[開始]のものは現在、実行中です。エクスポート完了時には[メッセージ機能](enju_operation_2.html#section2-3)にてお知らせします（「エクスポートが完了しました」というメッセージが送られてきます）。

![エクスポート結果の一覧表示](assets/images/image_operation_export_user_5.png)

<div class="alert alert-info memo">【Memo】この画面は[図書館の管理]メニュー->[エクスポート]->[利用者情報のエクスポート]とすればいつでも閲覧できます。</div> 

#### 7. ファイル名のリンクから作成されたTSVファイルをダウンロードすることができます。

![エクスポートファイルのダウンロード](assets/images/image_operation_export_user_6.png)

<div class="alert alert-success memo" markdown="1">
<h4 class="alert-heading">【Column】TSVファイル</h4>

次の項目が入っています(Enju Leaf 1.1.0)。

* username
* full_name
* full_name_transcription
* email
* user_number
* role
* user_group
* library
* locale
* locked
* required_role
* created_at
* updated_at
* expired_at
* keyword_list
* note
* checkout_icalendar_token
* save_checkout_history

</div>

{% include enju_operation/toc.md %}
