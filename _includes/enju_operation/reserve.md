6-3 予約を受け付ける
--------------------

予約は利用者自身で行うのが主ですが、図書館員が利用者の予約を受け付けることもできます。

### ■予約を新規作成する

1. ［貸出・返却・予約］メニューから［予約の一覧］を選択します。  
   ![予約の一覧](assets/images/image_operation_reserve.png)
2. 右メニューの［予約の新規作成］をクリックします。  
   ![予約の新規作成](assets/images/image_operation_191.png)
3. 予約したい本の名前を検索語に入力し、［検索］をクリックします。  
   ![検索](assets/images/image_operation_193.png)
4. 予約したい本が検索されたら、［予約］をクリックします。  
   ![予約](assets/images/image_operation_195.png)
5. 予約者の利用者番号等を入力し、［登録する］ボタンをクリックします。  
   ![作成](assets/images/image_operation_197.png)
5. 「予約が正常に作成されました」と表示され、予約が作成されます。
   ![作成](assets/images/image_operation_197_2.png)
 
### ■予約の一覧を表示・印刷する

1. ［貸出・返却・予約］メニューから［予約の一覧］を選択します。  
   ![予約の一覧](assets/images/image_operation_reserve.png)
2. 予約の一覧が表示されます。一覧を印刷したい場合は、右メニューの［CSV］をクリックしてCSVファイルを保存し、必要に応じてCSVファイルを印刷します。  
   ![CSV](assets/images/image_operation_200.png)

<div class="alert alert-success">
    <h4 class="alert-heading">【Column】CVS形式のデータファイル</h4>
    <p>CSV形式のデータファイル（CSVファイル）とは、
      項目をカンマで区切ったテキストファイルです。
      1行目にそれぞれの項目に関わるフィールド名が記入されています。
      フィールド名とその意味については次の通りです。</p>
  <table class="table table-bordered table-condensed table-striped">
    <caption>予約一覧のエクスポートCSVの項目</caption>
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
        <td>title</td>
        <td>utf8</td>
        <td>予約資料のタイトル</td></tr>
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
        <td>username</td>
        <td>ascii</td>
        <td>利用者名</td></tr>
      <tr>
        <td>created_at</td>
        <td>ISO8601</td>
        <td>予約時刻（例：2014-06-24 15:00:00 +0900）</td></tr>
      <tr>
        <td>expired_at</td>
        <td>ISO8601</td>
        <td>有効期限（例：2014-06-24 15:00:00 +0900）</td></tr>
      <tr>
        <td>state</td>
        <td>utf8</td>
        <td>状態（取置済み、受付済みetc）</td></tr>
    </tbody>
  </table>

  <table class="table table-bordered table-condensed table-striped">
    <caption>予約一覧のエクスポートCSVの例</caption>
    <thead>
      <tr>
	<th>id</th>
	<th>title</th>
	<th>isbn</th>
	<th>item_identifier</th>
	<th>call_number</th>
	<th>username</th>	
	<th>created_at</th>	
	<th>expired_at</th>
	<th>state</th></tr>
    </thead>
    <tbody>
      <tr>
	<td>2</td>
	<td>ゼロから学ぶ統計解析</td>
	<td>9784061546561</td>
	<td>003</td>
	<td>417||K||お</td>
	<td>nabeta</td>
	<td>2014-06-02 16:26:48 +0900</td>
	<td>2014-06-10 00:00:00 +0900</td>
	<td>取置済み</td></tr>
      <tr>
	<td>1</td>
	<td>キーワード検索がわかる</td>
	<td>9784480063854</td>
	<td></td>
	<td></td>
	<td>yegusa</td>
	<td>2014-06-02 16:16:31 +0900</td>
	<td>2014-06-10 00:00:00 +0900</td>
	<td>受付済み</td></tr>
      </tbody>
    </table>
</div>

###■取置済みの資料を表示する

状態が[取置済み]の予約資料のみを表示することができます。

1. ［貸出・返却・予約］メニューから［予約の一覧］を選択します。
   ![予約の一覧](assets/images/image_operation_reserve.png)
2. 右メニューの[取り置き済み(n)]リンクをクリックします。
    ![取置済みのみを表示](assets/images/image_operation_200_2.png)
3. 状態が[取置済み]の予約資料のみが表示されます
    ![取置済みの資料のみ出力](assets/images/image_operation_200_3.png)
 
### ■利用者に予約資料の到着を連絡する

<div class="alert alert-info">【Memo】Next-L Enju Leaf 1.1.0.rc9 以前のバージョンではこの機能は未実装です(開発予定はあります）。
</div>

1. その日に返却された予約資料の一覧を表示します。

   <div class="alert alert-info">【Memo】一覧には、ユーザが希望する連絡方法（メール、電話、FAX）などが表示されます。
   </div>

2. メールで連絡したい場合は、メールでの連絡を希望しているユーザの［メール連絡］にチェックを入れ、［メールを送信］ボタンをクリックします。
3. メール以外の連絡方法を希望しているユーザについては、それぞれ個別に対応します。

### ■予約の変更・取消をする

1. ［貸出・返却・予約］メニューから［予約の一覧］を選択します。
   ![予約の一覧](assets/images/image_operation_reserve.png)
2. 編集したい場合は予約の[編集]を、削除したい場合は[削除]をクリックします。
   ![予約の編集等](assets/images/image_operation_202.png)
3. 編集する場合は、有効期限などを変更して［予約を更新］ボタンをクリックします。 
   ![予約を更新](assets/images/image_operation_203.png)
