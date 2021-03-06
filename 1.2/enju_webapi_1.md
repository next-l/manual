---
layout: page
title: 第1章 検索結果一覧を取得する - Next-L Enju Web APIマニュアル
title_short: 第1章 資料を検索する
group: enju_webapi
version: 1.2
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

### 1-1-2 書誌と所蔵のTSVの例 {#bib_tsv_example}

<pre>
manifestation_id	original_title	title_transcription	creator	contributor	publisher	pub_date	statement_of_responsibility	manifestation_price	manifestation_created_at	manifestation_updated_at	manifestation_identifier	access_address	description	note	extent	dimensions	carrier_type	edition	edition_string	volume_number	volume_number_string	issue_number	issue_number_string	serial_number	isbn	issn	jpno	doi	iss_itemno	lccn	subject:unknown	subject:ndlsh	subject:bsh	subject:lcsh	classification:ndc9	classification:ddc	classification:ndc8	classification:ndc10	item_id	item_identifier	call_number	item_note	item_price	acquired_at	accepted_at	bookstore	budget_type	total_checkouts	circulation_status	shelf	library	item_created_at	item_updated_at
3	パーフェクトRuby on Rails	パーフェクト ルビー オン レイルズ	すがわら, まさのり, 1982-//前島, 真一//近藤, 宇智朗		技術評論社	2014-07	すがわらまさのり, 前島真一, 近藤宇智朗, 橋立友宏 著	2880	2018-01-08 21:27:20 +0900	2018-01-08 21:27:57 +0900	http://iss.ndl.go.jp/books/R100000002-I025470389-00				431p	23cm	volume								9784774165165		22426486		R100000002-I025470389-00		""	ウェブアプリケーション	""	""	547.483	""	""	""	3	001003	547|ス	""						0	Available On Shelf	first_shelf	yours	2018-01-08 21:27:57 +0900	2018-01-08 21:27:57 +0900
2	はじめてのRuby on Rails 3 : 「Webアプリケーション」作りに定番の「フレームワーク」を使う!	ハジメテ ノ Ruby on Rails 3 : Web アプリケーション ズクリ ニ テイバン ノ フレームワーク オ ツカウ	清水, 美樹		工学社	2010-11	清水美樹 著	2300	2018-01-08 21:26:09 +0900	2018-01-08 21:27:23 +0900	http://iss.ndl.go.jp/books/R100000002-I000011044291-00				303p	21cm + CD-ROM1枚 12cm	volume								9784777515639		21852544		R100000002-I000011044291-00						547.483	""	""	""	2	001002	547|シ	""						0	Available On Shelf	first_shelf	yours	2018-01-08 21:26:47 +0900	2018-01-08 21:26:47 +0900
1	Ruby on Rails 5超入門	ルビー オン レイルズ ファイヴ チョウニュウモン	掌田, 津耶乃		秀和システム	2016-12	掌田津耶乃 著	2700	2018-01-08 21:24:02 +0900	2018-01-08 21:26:10 +0900	http://iss.ndl.go.jp/books/R100000002-I027769223-00				542p	24cm	volume								9784798048321		22839928		R100000002-I027769223-00						547.483	""	""	""	1	001001	547|シ	""						0	Available On Shelf	first_shelf	yours	2018-01-08 21:25:34 +0900	2018-01-08 21:25:34 +0900
</pre>

### 1-1-3 書誌と所蔵のTSVの項目 {#bib_tsv_export}

次の項目が入っています(Enju Leaf 1.2.2)。

<!-- 全件エクスポート（Librarian権限以上のみ）、
検索結果一覧エクスポート、検索結果詳細エクスポートの出力項目は
1.2.0ではところ共通です。 
-->

* manifestation_id: 書誌ID
* original_title: 原題
* title_transcription: タイトルのヨミ
* creator: 著者
* contributor: 協力者・編者
* publisher: 出版者
* pub_date: 出版日
* statement_of_responsibility: 責任表示
* manifestation_price: 販売価格
* manifestation_created_at: 書誌情報作成日（エクスポートのみの項目）
* manifestation_updated_at: 書誌情報更新日（エクスポートのみの項目）
* manifestation_identifier：ローカル識別子
* access_address: アクセスアドレス
* description: 説明 ※改行は「\n」で表現されています
* note: 注記 ※改行は「\n」で表現されています
* extent: ページ数
* dimensions: 大きさ
* carrier_type: 資料種別
* edition: 版（数字）
* edition_string: 版
* volume_number: 巻（数字）
* volume_number_string: 巻
* issue_number: 号（数字）
* issue_number_string: 号
* serial_number: 通号
* isbn： ISBN
* subject:unknown: 件名（unknown）※入力データによっては出力されないこともあります。
* subject:ndlsh: 件名（NDLSH）※入力データによっては出力されないこともあります。
* （入力データによってはほかにも subject:　からはじまるものがあります）
* classification:ndc9: 分類（NDC）※入力データによっては出力されないこともあります。
* （入力データによってはほかにも classification:　からはじまるものがあります）
* item_id: 所蔵データID(自動付与）
* item_identifier: 所蔵情報ID
* call_number: 請求記号
* item_note: 注記（所蔵） ※改行は「\n」で表現されています
* item_price: 購入価格（Administrator権限、Librarian権限のときのみ出力）
* acquired_at: 受入日
* accepted_at: 検収日（エクスポートのみの項目）
* bookstore: 書店 （Administrator権限、Librarian権限のときのみ出力）
* budget_type: 予算種別（Administrator権限、Librarian権限のときのみ出力）
* total_checkouts: 貸出回数（Administrator権限、Librarian権限のときのみ出力）
* circulation_status: 貸出状態
* shelf: 本棚
* library: 図書館
* item_created_at: 所蔵情報作成日（エクスポートのみの項目）
* item_updated_at: 所蔵情報更新日（エクスポートのみの項目）

※1 その他、書誌に登録されている識別子（例：jpno,ncid）は全て出力されます。

※2 分類や件名で複数あるものは//で区切られて出力されます。

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

{% include enju_webapi/1.2/toc.md %}
