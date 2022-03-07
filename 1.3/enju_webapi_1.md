---
layout: page
title: 第1章 検索結果一覧を取得する - Next-L Enju Web APIマニュアル
title_short: 第1章 資料を検索する
group: enju_webapi
version: 1.3
---

* Contents
{:toc}

第1章 検索結果一覧を取得する {#section1}
================================

Enju は検索結果一覧を好みのフォーマットで取得する機能があります。

* .txt
* .json
* .rdf
* .xml
* .mods
* .sru
* .html

などを取得できます。

1-1 TSVを取得する {#section1-1}
------------------------------------

### 1-1-1 TSV取得方法 {#section1-1-1}

#### 1. 検索結果を表示します。

#### 2. 検索結果のアドレス欄のURLのmanifestationsの後ろに.txtを追加します。

<pre>
例
（変更前）：http://localhost:8080/manifestations?utf8=%E2%9C%93&query=&commit=%E6%A4%9C%E7%B4%A2
（変更後）：http://localhost:8080/manifestations.txt?utf8=%E2%9C%93&query=&commit=%E6%A4%9C%E7%B4%A2
</pre>

にします

※ 検索結果画面の右メニューの[TSV]リンクをクリックした先のURLと同様です(詳細：[利用者マニュアルの「1-8-3 TSV 形式で書き出し」](enju_user_1.html#section1-8-3)）。

#### 3. この検索結果画面がTSV形式で表示されます。 

※現在、表示している検索結果のみを表示します。他の画面の検索結果は含みません。
※Enju Leaf1.3.3以前は、改行は \n に変換されていましたが、Enju Leaf1.3.4以降では改行はそのままとなりますので、改行がはいったデータがある場合、Excelへのインポートでは次の列になってしまうことに注意(Googleスプレッドシートなどでは問題なくできます)。

### 1-1-2 書誌と所蔵のTSVの例 {#bib_tsv_example}

<pre>
manifestation_id	original_title	title_alternative	title_transcription	statement_of_responsibility	serial	manifestation_identifier	creator	contributor	publisher	pub_date	year_of_publication	publication_place	manifestation_created_at	manifestation_updated_at	carrier_type	content_type	frequency	language	isbn	issn	volume_number	volume_number_string	edition	edition_string	issue_number	issue_number_string	serial_number	extent	start_page	end_page	dimensions	height	width	depth	price	access_address	manifestation_required_role	abstract	description	note	identifier:isbn	identifier:issn	identifier:jpno	identifier:doi	identifier:iss_itemno	identifier:lccn	identifier:ncid	identifier:loc_identifier	identifier:issn_l	identifier:epi	series_statement_id	series_statement_original_title	series_statement_title_subseries	series_statement_title_subseries_transcription	series_statement_title_transcription	series_statement_creator	series_statement_volume_number	series_statement_series_master	series_statement_root_manifestation_id	series_statement_manifestation_id	series_statement_position	series_statement_note	series_statement_created_at	series_statement_updated_at	manifestation_memo	manifestation:momiji1	manifestation:kentei	subject:unknown	subject:ndlsh	subject:bsh	subject:lcsh	classification:ndc9	classification:ddc	classification:ndc8	classification:ndc10	jpno	ncid	item_id	item_identifier	binding_item_identifier	call_number	shelf	item_note	accepted_at	acquired_at	item_created_at	item_updated_at	bookstore	budget_type	item_required_role	item_price	item_memo	item:mimoza1	use_restriction	circulation_status	checkout_type	total_checkouts
79	図書館と情報技術 : 情報検索基礎能力試験の過去問題と解説収録		トショカン ト ジョウホウ ギジュツ : ジョウホウ ケンサク キソ ノウリョク シケン ノ カコ モンダイ ト カイセツ シュウロク	岡紀子, 田中邦英 著		http://iss.ndl.go.jp/books/R100000002-I024356997-00	岡, 紀子//田中, 邦英	""	樹村房	2013-01-01 00:00:00 +0900	2013	東京	2022-01-11 19:15:26 +0900	2022-01-11 19:17:53 +0900	volume	text	unknown	Japanese	9784883672240	""								199p	1	199	26cm	26			2100		Guest				9784883672240	""	22230911	""	R100000002-I024356997-00	""	""	""	""	""	""	""	""	""	""	""	""	""	""	""	""	""	""	""				""	図書館--オートメーション	""	""	013.8	""	""	""	22230911		62	24228035			first_shelf	""	2022-01-11 19:15:58 +0900		2022-01-11 19:15:48 +0900	2022-01-11 19:17:53 +0900			Guest		""		Limited Circulation, Normal Loan Period	Available On Shelf	book	0
</pre>

### 1-1-3 書誌と所蔵のTSVの項目 {#bib_tsv_export}

次の項目が入っています(Enju Leaf 1.3.4)。

<!-- 全件エクスポート（Librarian権限以上のみ）、
検索結果一覧エクスポート、検索結果詳細エクスポートの出力項目は
1.2.0ではところ共通です。 
-->

{:class="table table-bordered"}
|項目ID|項目名|備考|閲覧権限|
|:-----|:-----|:---|:-------|
| manifestation_id|書誌ID|||
| original_title|原題|||
| title_transcription|タイトルのヨミ|||
| creator|著者|著者の役割があった場合は、役割付きで出力される（詳細：「[TSVファイルの作り方のcreator](enju_operation_4.html#tsv_creator)」を参照）||
| contributor|協力者・編者|||
| publisher|出版者|||
| pub_date|出版日|||
| statement_of_responsibility|責任表示|||
| manifestation_price|販売価格|||
| manifestation_created_at|書誌情報作成日|エクスポートのみの項目||
| manifestation_updated_at|書誌情報更新日|エクスポートのみの項目||
| manifestation_identifier|ローカル識別子|||
| access_address|アクセスアドレス|||
| description|説明|||
| note|注記|||
| extent|ページ数|||
| dimensions|大きさ|||
| carrier_type|資料種別|||
| edition|版（数字）|||
| edition_string|版|||
| volume_number|巻（数字）|||
| volume_number_string|巻|||
| issue_number|号（数字）|||
| issue_number_string|号|||
| serial_number|通号|||
| isbn： ISBN|||
| subject:unknown|件名（unknown）|※入力データによっては出力されないこともあります。||
| subject:ndlsh|件名（NDLSH）|※入力データによっては出力されないこともあります。<br>（入力データによってはほかにも subject:　からはじまるものがあります）||
| classification:ndc9|分類（NDC）|※入力データによっては出力されないこともあります。<br>（入力データによってはほかにも classification:　からはじまるものがあります）||
| item_id|所蔵データID(自動付与）|||
| item_identifier|所蔵情報ID|||
| call_number|請求記号|||
| item_note|注記（所蔵）|||
| item_price|購入価格||Administrator権限、Librarian権限のときのみ出力|
| acquired_at|受入日|||
| accepted_at|検収日|エクスポートのみの項目||
| bookstore|書店||Administrator権限、Librarian権限のときのみ出力|
| budget_type|予算種別||Administrator権限、Librarian権限のときのみ出力|
| total_checkouts|貸出回数||Administrator権限、Librarian権限のときのみ出力|
| circulation_status|貸出状態|||
| use_restriction|利用制限||Administrator権限、Librarian権限のときのみ出力 注：1.3.0以前ではguestアカウントでも出力されます。1.3.1からは修正されています。）（参照： [issue #1366](https://github.com/next-l/enju_leaf/issues/1366)）|
| shelf|本棚|||
| library|図書館|||
| item_created_at|所蔵情報作成日|エクスポートのみの項目||
| item_updated_at|所蔵情報更新日|エクスポートのみの項目||
| manifestation:custom1|カスタム項目|※設定に応じて "custom1" の部分には項目コードが入ります|Administrator権限、Librarian権限のときのみ出力|
| item:custom1|カスタム項目|※設定に応じて "custom1" の部分には項目コードが入ります|Administrator権限、Librarian権限のときのみ出力|
| manifestation_memo|業務メモ|※書誌|Administrator権限、Librarian権限のときのみ出力|
| item_memo|業務メモ|※所蔵|Administrator権限、Librarian権限のときのみ出力|

※1 その他、書誌に登録されている識別子（例：jpno,ncid）は全て出力されます。

※2 識別子や分類や件名で複数あるものは//で区切られて出力されます。

1-2 RDF/XML形式のデータを取得する {#section1-2}
------------------------------------

### 1-2-1 RDF/XML形式のデータ取得方法 {#section1-2-1}

#### 1. 検索結果を表示します。

#### 2. 検索結果のアドレス欄のURLのmanifestationsの後ろに.rdfを追加します。

<pre>
例
（変更前）：http://localhost:8080/manifestations?utf8=%E2%9C%93&query=&commit=%E6%A4%9C%E7%B4%A2
（変更後）：http://localhost:8080/manifestations.rdf?utf8=%E2%9C%93&query=&commit=%E6%A4%9C%E7%B4%A2
</pre>

にします

※ 検索結果画面の右メニューの[RDF/XML]リンクをクリックした先のURLと同様です(詳細：[利用者マニュアル「1-8-1 RDF/XML 形式で書き出し」](enju_user_1.html#section1-8-1)）。

#### 3. この検索結果画面がRDF/XML形式で表示されます。 

※現在、表示している検索結果のみを表示します。他の画面の検索結果は含みません。

### 1-2-2 書誌と所蔵のRDF/XML形式のデータの例 {#bib_rdf_example}

<pre>
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;rdf:RDF xmlns="http://purl.org/rss/1.0/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcndl="http://ndl.go.jp/dcndl/terms/" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:prism="http://prismstandard.org/namespaces/basic/2.0/" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"&gt;
  &lt;channel rdf:about="http://localhost:8080/manifestations?format=rdf&amp;only_path=true&amp;query="&gt;
    &lt;title&gt;検索語  による えんじゅ図書館 の資料の検索結果&lt;/title&gt;
    &lt;link&gt;http://localhost:8080/manifestations?query=&lt;/link&gt;
    &lt;description&gt;Next-L Enju, an open source integrated library system developed by Project Next-L&lt;/description&gt;
    &lt;language&gt;ja&lt;/language&gt;
    &lt;ttl&gt;60&lt;/ttl&gt;
    &lt;items&gt;
      &lt;rdf:Seq&gt;
        &lt;rdf:li rdf:resource="http://localhost:8080/manifestations/2"/&gt;
        &lt;rdf:li rdf:resource="http://localhost:8080/manifestations/1"/&gt;
      &lt;/rdf:Seq&gt;
    &lt;/items&gt;
  &lt;/channel&gt;
  &lt;item rdf:about="http://localhost:8080/manifestations/2"&gt;
&lt;title&gt;パーフェクトRuby on Rails&lt;/title&gt;
&lt;link&gt;http://localhost:8080/manifestations/2&lt;/link&gt;
&lt;description&gt;技術評論社; 2014-07&lt;/description&gt;
  &lt;/item&gt;
  &lt;item rdf:about="http://localhost:8080/manifestations/1"&gt;
&lt;title&gt;Ruby on Rails入門 : 優しいRailsの育て方&lt;/title&gt;
&lt;link&gt;http://localhost:8080/manifestations/1&lt;/link&gt;
&lt;description&gt;秀和システム; 2006-08&lt;/description&gt;
  &lt;/item&gt;
&lt;/rdf:RDF&gt;
</pre>

1-3 JSON形式のデータを取得する {#section1-3}
------------------------------------

### 1-3-1 JSON形式のデータ取得方法 {#section1-3-1}

#### 1. 検索結果を表示します。

#### 2. 検索結果のアドレス欄のURLのmanifestationsの後ろに.jsonを追加します。

<pre>
例
（変更前）：http://localhost:8080/manifestations?utf8=%E2%9C%93&query=&commit=%E6%A4%9C%E7%B4%A2
（変更後）：http://localhost:8080/manifestations.json?utf8=%E2%9C%93&query=&commit=%E6%A4%9C%E7%B4%A2
</pre>

にします

#### 3. この検索結果画面に表示されている書誌情報がJSON形式で表示されます。 

※現在、表示している検索結果のみを表示します。他の画面の検索結果は含みません。

### 1-3-3 書誌と所蔵のJSON形式のデータの例 {#bib_json_example}

```json
{
  total_count: 51,
  results: [ {
    id: 12825,
    original_title: "Ruby on Rails 5超入門",
    title_alternative: null,
    title_transcription: "ルビー オン レイルズ ファイヴ チョウニュウモン",
    title_alternative_transcription: null,
    pub_date: "2016",
    statement_of_responsibility: "掌田津耶乃 著",
    creators: [ { full_name: "掌田, 津耶乃" } ],
    contributors: [ ],
    publishers: [ { full_name: "秀和システム" } ],
    publication_place: "東京",
    extent: "542p",
    dimensions: "24cm",
    identifiers: [
      { identifier_type: "isbn", body: "9784798048321" },
      { identifier_type: "iss_itemno", body: "R100000002-I027769223-00" },
      { identifier_type: "jpno", body: "22839928" }
    ],
    subjects: [ { subject_heading_type: "ndlsh", term: "ウェブアプリケーション" } ],
    classfifications: [ { classification_type: "ndc9", term: "547.483" } ],
    access_address: null,
    items: [ { item_identifier: "098567", shelf: "一般書架" } ],
    created_at: "2019-07-28T14:38:16.570+09:00",
    updated_at: "2019-07-28T14:39:16.317+09:00"
  }, {
    id: 12661,
    original_title: "はじめてのRuby on Rails 3 : 「Webアプリケーション」作りに定番の「フレームワーク」を使う!",
    title_alternative: "",
    title_transcription: "ハジメテ ノ Ruby on Rails 3 : Web アプリケーション ズクリ ニ テイバン ノ フレームワーク オ ツカウ",
    title_alternative_transcription: null,
    pub_date: "2010-11",
    statement_of_responsibility: "清水美樹 著",
    creators: [ { full_name: "清水, 美樹" } ],
    contributors: [ ],
    publishers: [ { full_name: "工学社" } ],
    publication_place: "東京",
    extent: "303p",
    dimensions: "21cm + CD-ROM1枚 12cm",
    identifiers: [
      { identifier_type: "isbn", body: "9784777515639" },
      { identifier_type: "iss_itemno", body: "R100000002-I000011044291-00" },
      { identifier_type: "jpno", body: "21852544" }
    ],
    subjects: [ ],
    classfifications: [ { classification_type: "ndc9", term: "547.483" } ],
    access_address: "",
    items: [ ],
    created_at: "2019-01-26T12:01:53.107+09:00",
    updated_at: "2019-07-28T14:38:18.179+09:00"
  } ]
}
```
### 1-3-3 書誌と所蔵のJSON形式の項目 {#bib_json_export}

JSON形式は以下のキーと値のペアから構成されます。

{:class="table table-bordered"}
|項目ID|項目名|備考|
|:-----|:-----|:---|
|total_count|ヒット件数||
|results|検索結果レコード|配列として各書誌情報が出力される|

各レコードの書誌情報は以下のキーと値のペアから構成されます。

{:class="table table-bordered"}
|項目ID|項目名|備考|
|:-----|:-----|:---|
|id|書誌ID||
|original_title|タイトル||
|title_alternative|別タイトル||
|title_transcription|タイトル（読み）||
|title_alternative_transcription|別タイトル（読み）||
|pub_date|出版日||
|statement_of_responsibility|責任表示||
|creators|著者|配列として表現|
|contributors|貢献者|配列として表現|
|publishers|出版者|配列として表現|
|publication_place|出版地||
|extent|ページ数||
|dimentions|大きさ||
|identifiers|識別子||
|subjects|件名||
|classifications|分類||
|access_address|URL||
|items|所蔵レコード|配列として表現|
|created_at|作成日時||
|updated_at|更新日時||

{% include enju_webapi/1.3/toc.md %}
