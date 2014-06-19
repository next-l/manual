<a name="3-2" />

3-2 既存のデータから利用者情報をインポートする
----------------------------------------------

既存の利用者データがファイルで存在する場合は、インポートと呼ぶ読み込みを行い、利用者情報に取り込めます。インポートするには、あらかじめファイルをTSV形式で作成しておく必要があります。

<a name="3-2-1" />

### 3-2-1 TSVファイルのインポート

1. ［図書館の管理］メニューから［インポート］を選択します。  
   ![利用者の管理](assets/images/image_operation_import.png)
2. ［利用者］をクリックします。  
   ![利用者のTSVファイルからのインポート](assets/images/image_operation_037.png)
3.  右メニューの[利用者のインポート用ファイルの新規作成]を選択します。
   ![利用者のTSVファイルからのインポート（新規作成）](assets/images/image_operation_037_2.png)
3. ［ファイルを選択］ボタンをクリックしてインポート用のファイルを選択します。  
   ![人物・団体のインポート用ファイルを選択](assets/images/image_operation_039_1.png)
4. [編集モード]で[作成]を選択し，[登録する]ボタンをクリックします。
 ![人物・団体のインポート用ファイルを作成](assets/images/image_operation_039_2.png)

   <div class="alert alert-info">【Memo】［編集］モードで［更新］を選択すると、TSVファイルで利用者情報をまとめて更新できます。TSVファイルに必要なのは、更新したい利用者のユーザ名（<code>username</code>）と、更新したいフィールドの内容になります。また、［削除］を選択すると、TSVファイルで利用者情報をまとめて削除できます。この場合は、TSVファイルに必要なのは、削除したい利用者のユーザ名（<code>username</code>）のみです。
   </div>

4. 「利用者のインポート用ファイルは正常に作成されました。」のメッセージが表示され、利用者のデータがインポートの準備が整います。 右の[利用者のインポート用ファイルの一覧] をクリックします。

   ![利用者のインポート用ファイルの表示](assets/images/image_operation_040_2.png)
5. 今までのインポート結果の一覧が表示されます。[状態]を見ると処理結果がわかります。インポートが完了したものは[完了]と表示されます。[処理待ち]のものは毎時0分にインポート処理が開始します。

   ![利用者のインポート結果の一覧](assets/images/image_operation_040_3.png)

	<div class="alert alert-info">【Memo】この画面は[図書館の管理]メニュー→[インポート]→[利用者]とすればいつでも閲覧できます。
	</div>

<div class="alert alert-success" markdown="1">
<h4 class="alert-heading">【Column】TSVファイルの作り方</h4>
TSVファイルとは、項目をタブで区切ったテキストファイルです。Enjuで利用するTSVファイルでは、1行目にそれぞれの項目に関わるフィールド名を指定します。フィールド名および値は原則として " " で囲みます。
フィールド名とその意味については次の通りです。

### ■アカウントに関わる項目

{::comment}![アカウントに関わる項目](assets/images/image_operation_041.png)
{:/comment}

<table class="table table-bordered table-condensed table-striped">
<caption>アカウントに関わる項目</caption>
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
<td>user_number</td><td>ascii</td><td>利用者番号（数字以外にアルファベットも使用可能）</td>
<td>未設定</td>
</tr>
<tr>
<td>email</td><td>ascii</td><td>メールアドレス：2つ以上入力したい場合は注記（note）に書くしかない</td><td>未設定</td>
</tr>
<tr>
<td>library</td><td>code</td><td>所属図書館</td>
<td>web</td>
</tr>
<tr>
<td>user_group</td><td>code</td><td>利用者グループ</td><td>First group ※1</td>
</tr>
<tr>
<td>locale</td><td>code</td><td>（使用）言語(日本語の場合：ja,　英語の場合：en) ※2</td><td>ja ※3</td>
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
<td>note</td><td>utf8</td><td>注記</td>
<td>未設定</td>
</tr>
<tr>
<td>dummy</td><td>utf8</td><td>ダミー行の指定（なにかを書いているとその行は無視する行と判定される）</td>
<td>（読み込まれる行と判定される）</td>
</tr>
</tbody>
</table>

※1 "First group"の[名前]を変更した場合は異なります。
一度ダミーのデータを登録してみて、お確かめください。
利用者のグループの[名前]については初期設定マニュアルの「3-4 利用者グループを設定する」を参照ください。

※2 環境によっては異なることがあります。
使用できるものに何があるかは、以下のコマンドでわかります。

<pre>
    $ cd enju
    $ rails c production
    irb> I18n.available_locales.map{|l| l.to_s}
    => ["en", "ja"]
</pre>

※3　環境によっては異なることがあります。
一度ダミーのデータを登録してみてお確かめください。

{::comment}
### ■個人情報に関わる項目
![個人情報に関わる項目](assets/images/image_operation_042.png)
{:/comment}
</div>

<a name="3-2-2" />

### 3-2-2 失敗した場合について

TSVファイルになんらかのエラーがありインポートの状態が[失敗]となることがあります。状態が[失敗]となった場合は、エラーのあった行以降のレコードが登録されていませんので、エラーを修正して、エラー行以降のファイルを作成してインポートする必要があります。

1. インポートの状態が[失敗]の[表示]をクリックします。
  ![TSVインポートに失敗](assets/images/image_operation_041_2.png)
2. [エラーメッセージ]にエラーの行とエラーの内容が表示されていますので、内容を確認します。次の例では2行目のレコードにユーザ名(username)がないようです。[ファイル名]をクリックしてTSVファイルをダウンロードします。
  ![エラーメッセージ](assets/images/image_operation_041_3.png)
3. 該当行のエラーを修正し、ヘッダ行とエラーのあった行以降のレコードが入ったTSVファイルを作成し、インポートをします。


