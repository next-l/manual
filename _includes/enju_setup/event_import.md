<span/>3-9 既存のデータから催し物情報をインポートする
----------------------------------------------

### ■設定項目

既存のデータファイルを指定して読み込む「インポート」を行うと，一度に複数のデータを登録することができます。インポートするには，あらかじめデータファイルをTSV形式で作成しておきます。

<div class="alert alert-info" markdown="1">
TSV形式とは，データの項目をタブで区切って記述したテキストファイルです。
  
TSV形式のファイルには，次のフィールドとそれに対応した項目を作成します。  

* name：イベント名
* category：カテゴリ
* library_shortname：図書館名短縮表示
* start_at：開始日。西暦で，年月日の間にハイフンを入力します。
* end_at：終了日。西暦で，年月日の間にハイフンを入力します。
* dummy ：ダミーデータを示しています。この行をインポートしない場合は，"1"と入力します。

<table border="2">
<caption>＊設定例</caption>
<tr><td>"name"      </td><td>"category"</td><td>"library_shortname"</td><td>"start_at"</td><td>"end_at"</td><td>"dummy"</td></tr>
<tr><td>"イベント名"</td><td>"カテゴリ（休館日の場合はclosed）"</td><td>"図書館名"</td><td>"開始日"</td><td>"終了日"</td><td>　</td></tr>
<tr><td>"hogehoge"  </td><td>"おはなし会"     </td><td>"kamata"</td><td>"2009-04-01"</td><td>"2009-04-03"</td><td>　</td></tr>
<tr><td>"hogehoge"  </td><td>　</td><td>"hachioji"</td><td>　</td><td>　</td><td>　</td></tr>
<tr><td>"休館日"    </td><td>"closed"         </td><td>"kamata"</td><td>"2011-04-01"</td><td>"2011-04-03"</td><td>　</td></tr>
</table>
１行目にはフィールド名，２行目には表示名を記述します。レコードは３行目以降に記述します。
</div>

### ■設定方法
1. ［図書館の管理］メニューから［システムの設定］を選択します。  
   ![システムの設定](assets/images/image_system_setup.png)
2. ［催し物ファイルのインポートの新規作成］をクリックします。  
   ![催し物ファイルのインポート](assets/images/image_system_setup_library.png)
3. ［参照］をクリックします。  
   ![催し物ファイルの参照](assets/images/image_initial_036.png)
4. インポートしたいファイルを指定し，［開く］をクリックします。
5. ［催し物ファイルのインポートの新規作成］ボタンをクリックして，データをインポートします。  
   ![催し物ファイルの指定](assets/images/image_initial_036.png)

