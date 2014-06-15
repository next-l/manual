<a name="3-12" />

3-12 検索エンジンを設定する
---------------------------

検索エンジンを設定すると、資料を検索したときにヒット件数が0件だった場合に、同じ検索語で別のデータベース（検索エンジン）に検索をすることができるようになります。
次の図は、ヒット件数が0件だったときの画面を表しています。ここでは、3つの検索エンジン（NDL Search, amazon.co.jp, CiNii Books）を表示しています。

![0件ヒットと検索エンジン](assets/images/image_initial_044_00.png)

<a name="3-12-1" />

### 3-12-1 設定項目

* 名前：検索エンジンの名称を入力します。
* URL：URLを入力します。（入力必須）
* ベースURL：ベースURLを入力します。
* HTTPメソッド：▼をクリックし，リストから選択します。
* クエリパラメータ：URLに追加するパラメータを入力します。
* 追加のパラメータ：URLに追加するパラメータを入力します。
* 注記：注意事項や特記事項などを入力します。

<a name="3-12-2" />

### 3-12-2 設定方法

1. ［図書館の管理］メニューから［システムの設定］を選択します。  
   ![システムの設定](assets/images/image_system_setup.png)
2. ［検索エンジン］をクリックします。  
   ![検索エンジンの設定](assets/images/image_initial_044_0.png)
3. 右メニューの［検索エンジンの新規作成］をクリックします。
   ![検索エンジンの設定](assets/images/image_search_engine_create.png)
4. 設定項目に必要事項を入力し、
   ［登録する］ボタンをクリックして，設定内容を登録します。
   ![検索エンジンの設定](assets/images/image_search_engine_input.png)

	<div class="alert alert-info">
【Memo】CiNii Booksの登録例（検索語がflowerであれば：http://ci.nii.ac.jp/books/search?q=flower&format=html というリクエストになる）を示しています。
	</div>

5. 以下はその他の検索エンジンの設定例です。

* 名前: NDL Search
    * URL: http://iss.ndl.go.jp/
    * ベースURL: http://iss.ndl.go.jp/books
    * HTTPメソッド: get
    * クエリパラメータ: any
* 名前: amazon.co.jp
    * URL: http://www.amazon.co.jp/
    * ベースURL: http://www.amazon.co.jp/s?
    * HTTPメソッド: get
    * クエリパラメータ: field-keywords
    * 追加のパラメータ: url=search-alias=aps
