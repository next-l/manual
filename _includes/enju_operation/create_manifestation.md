4-2 図書を登録する
------------------

発注した図書が届いたら、資料としてEnjuに登録します。Enjuへの登録は、TSVファイルを読み込んで一括登録する方法が、一般的かつ効率的です。ISBNコードで1件ずつ行うこともできます。

### ■TSVファイルを読み込んで登録する

1. ［資料の受入］メニューから［TSVファイルからのインポート］を選択します。  
   ![TSVファイルからのインポート](assets/images/image_operation_093.png)
2. ［ファイルを選択］ボタンをクリックしてインポート用のファイルを選択します。
   ![ファイルを選択](assets/images/image_operation_094.png)
3. ［編集モード］で［作成］を選択して［登録する］ボタンをクリックします。  
   ![インポートされる資料のファイルを作成](assets/images/image_operation_095.png)
   
   <div class="alert alert-info">【Memo】［編集］モードで［更新］を選択すると、TSVファイルまたはMARCファイルで資料の情報をまとめて更新できます。TSVファイルを利用する場合は、更新したい資料の個別資料番号（item_identifier）と更新したいフィールドの内容が記述されたファイルを準備しておきます。また、［削除］を選択すると、TSVファイルやMARCファイルで資料の情報をまとめて削除できます。TSVファイルを利用して資料の情報を削除する場合は、削除したい資料の個別資料番号（item_identifier）のみ記述されたファイルを準備しておきます。[関連を更新]とするとxxxxxxxxxxxとなります。
   </div>

3. 「資料のインポート用ファイルは正常に作成されました。」のメッセージが表示され、資料のデータインポートの準備が整いました。右の[資料のインポート用ファイルの一覧]をクリックします。
   ![インポート結果](assets/images/image_operation_095_2.png)
4. 今までのインポート結果の一覧が表示されます。[状態]を見ると処理結果がわかります。インポートが完了したものは[完了]と表示されます。[処理待ち]のものは毎時0分にインポート処理が開始します。
   ![インポート結果の一覧表示](assets/images/image_operation_095_3.png)

   <div class="alert alert-info">【Memo】この画面は[図書館の管理]メニュー->[インポート]->[資料]->[資料のインポート用ファイルの一覧]とすればいつでも閲覧できます。</div> 

### ■ISBNファイルを読み込んで登録する

1. ISBNのフィールドだけ入力したTSVファイルを用意し、前述の操作に従ってTSVファイルを読み込んで登録します。

	<div class="alert alert-info">【Memo】ISBNコードが分かっている場合は、タイトルや著者などほかのフィールド情報をTSVファイルに入力しておかなくても、ISBNコードから国立国会図書館のデータを参照して、自動的に空白のフィールドが埋められます。データの誤りによって登録ができなかった資料は、［失敗］をクリックして表示を絞り込み、ISBNコードなどを確認して再登録します。
	</div>

### ■ISBNコードを入力して1件ずつ登録する

1. ［資料の受入］メニューから［ISBNを入力する］を選択します。
   ![ISBNを入力する](assets/images/image_operation_106.png)
2. ISBNコードを入力し、［登録する］をクリックします。
   ![インポートのリクエストを作成](assets/images/image_operation_108.png)
3. 「インポートのリクエストは正常に作成されました。」と表示され、登録が完了しま>す。
   ![登録完了](assets/images/image_operation_109.png)

   <div class="alert alert-info" markdown="1">
<h4 class="alert-heading">【Memo】ISBNコードで入力した書誌情報を確認する</h4>

1. [資料の受入］メニューから［ISBNを入力する］を選択します。
   ![ISBNを入力する](assets/images/image_operation_106.png)
2. 右メニューの［ISBNインポートリクエストの一覧］を選択します。
   ![ISBNインポートリクエストの一覧](assets/images/image_operation_109_2.png)
3. ISBNインポートのリクエストの一覧が表示されます。[状態]の列をみれば、登録状況がわかります。[完了]となっていれば、登録されたことを示します。[失敗]や[処理待ち]は登録されていません。
   ![ISBNインポートリクエストの一覧表示](assets/images/image_operation_109_3.png)
   </div>

### ■手動で資料を登録する

1. ［資料の受入］メニューから［手動で登録する］を選択します。
   ![手動で登録する](assets/images/image_operation_input_manually_manifestation.png)
2. 原題のほか必要な項目を入力し、[登録する]ボタンをクリックします。
   ![原題のほか必要な項目を入力し登録](assets/images/image_operation_100.png)

   <div class="alert alert-info" markdown="1">【Memo】「*」のマークが付いた項目は入力必須項目です。
   </div>

4. 「資料は正常に作成されました。」のメッセージが表示され、図書が登録されます。
  ![原題のほか必要な項目を入力し登録](assets/images/image_operation_100_2.png)

<div class="alert alert-success" markdown="1">
<h4 class="alert-heading">【Column】TSVファイルの作り方</h4>
1行目に、それぞれの項目に関わるフィールド名を（できれば " " で囲って）指定します。
フィールド名とその意味については次の通りです。

### ■図書の場合

<table class="table table-bordered table-condensed table-striped">
<caption>図書のフィールド項目名と対応する内容</caption>
<thead>
<tr>
<th>フィールド名</th>
<th>データ形式</th>
<th>内容</th>
</tr>
</thead>
<tbody>
<tr>
<td>force_import</td><td>flag</td><td>強制登録フラグ</td>
</tr>
<tr>
<td>isbn</td><td>ascii</td><td>ISBN</td>
</tr>
<tr>
<td>identifier</td><td>utf8</td><td>資料番号</td>
</tr>
<tr>
<td>original_title</td><td>utf8</td><td>原タイトル</td>
</tr>
<tr>
<td>note</td><td>utf8</td><td>備考</td>
</tr>
<tr>
<td>title_transcription</td><td>utf8</td><td>タイトル読み</td>
</tr>
<tr>
<td>title_alternative</td><td>utf8</td><td>代替タイトル</td>
</tr>
<tr>
<td>creator</td><td>utf8</td><td>著者名</td>
</tr>
<tr>
<td>publisher</td><td>utf8</td><td>出版者/社</td>
</tr>
<tr>
<td>date_of_publication</td><td>ascii</td><td>出版年月日(内部データ)</td>
</tr>
<tr>
<td>pub_date</td><td>ascii</td><td>出版年月日(ハイフン区切り  2010, 2010-01, 2010-01-01 がすべて有効)</td>
</tr>
<tr>
<td>volume_number_list</td><td>utf8</td><td>巻</td>
</tr>
<tr>
<td>edition_string</td><td>utf8</td><td>版</td>
</tr>
<tr>
<td>manifestation_price</td><td>int</td><td>販売価格</td>
</tr>
<tr>
<td>item_price</td><td>int</td><td>購入価格</td>
</tr>
<tr>
<td>height</td><td>int</td><td>高さ</td>
</tr>
<tr>
<td>width</td><td>int</td><td>幅</td>
</tr>
<tr>
<td>depth</td><td>int</td><td>奥行き</td>
</tr>
<tr>
<td>shelf</td><td>code</td><td>配架場所</td>
</tr>
<tr>
<td>item_identifier</td><td>ascii</td><td>個別資料コード</td>
</tr>
<tr>
<td>nbn</td><td>int</td><td>全国書誌番号</td>
</tr>
<tr>
<td>ndc</td><td>ascii</td><td>NDC</td>
</tr>
<tr>
<td>lccn</td><td>ascii</td><td>LCCN</td>
</tr>
<tr>
<td>subject</td><td>utf8</td><td>件名</td>
</tr>
<tr>
<td>carrier_type</td><td>code</td><td>印刷の形態</td>
</tr>
<tr>
<td>frequency</td><td>code</td><td>発行頻度</td>
</tr>
<tr>
<td>start_page</td><td>int</td><td>最初のページ</td>
</tr>
<tr>
<td>number_of_pages</td><td>int</td><td>最後のページ</td>
</tr>
<tr>
<td>access_address</td><td>ascii</td><td>アクセスアドレス</td>
</tr>
<tr>
<td>required_role_name</td><td>code</td><td>参照に必要な権限</td>
</tr>
<tr>
<td>description</td><td>utf8</td><td>説明</td>
</tr>
<tr>
<td>note</td><td>utf8</td><td>注記</td>
</tr>
<tr>
<td>repository</td><td>flag</td><td>リポジトリのコンテンツ(true/false)</td>
</tr>
<tr>
<td>cover_image_url</td><td>ascii</td><td>表紙画像url/file名<br/>
http://www.kodansha.co.jp/image/0001.jpg<br/>
file:///200011g.jpg　等
</td>
</tr>
<tr>
<td>content_image_url</td><td>ascii</td><td>目次画像</td>
</tr>
<tr>
<td>index_image_url</td><td>ascii</td><td>索引画像</td>
</tr>
<tr>
<td>content_text_url</td><td>ascii</td><td>目次テキスト</td>
</tr>
<tr>
<td>index_text_url</td><td>ascii</td><td>索引テキスト</td>
</tr>
<tr>
<td>url</td><td>ascii</td><td>関連するURL</td>
</tr>
</tbody>
</table>

### ■CD/DVDの場合

![CD/DVDの場合](assets/images/image_operation_102.png)

</div>

