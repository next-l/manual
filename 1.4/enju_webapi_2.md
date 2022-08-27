---
layout: page
title: 第2章 検索結果詳細を取得する - Next-L Enju Web APIマニュアル
title_short: 第2章 検索結果詳細を取得
group: enju_webapi
version: 1.4
---

* Contents
{:toc}

第2章 検索結果詳細を取得する {#section2}
========================================

Enju は資料の検索結果詳細を好みのフォーマットで取得する機能があります。

2-1 TSVを取得する {#section2-1}
-------------------------------

### 2-1-1 TSV取得方法 {#section2-1-1}

#### 1. 書き出しをしたい検索結果詳細画面を表示させます。

#### 2. 検索結果詳細アドレス欄のURLの後ろに.txtを追加します。

<pre>
例
（変更前）：http://localhost:8080/manifestations/5
（変更後）：http://localhost:8080/manifestations/5.txt
</pre>

にします

※ 検索結果詳細画面の右メニューの[TSV]リンクをクリックした先のURLと同様です(詳細：[利用者マニュアル「1-9-3 TSV 形式で書き出し」](enju_user_1.html#section1-9-3)）。


#### 3. この検索結果詳細画面がTSV形式で表示されます。

### 2-1-2 書誌と所蔵のTSVの例 {#bib_tsv_example_simple}

<pre>
manifestation_id	original_title	title_transcription	creator	contributor	publisher	pub_date	statement_of_responsibility	manifestation_price	manifestation_created_at	manifestation_updated_at	manifestation_identifier	access_address	description	note	extent	dimensions	carrier_type	edition	edition_string	volume_number	volume_number_string	issue_number	issue_number_string	serial_number	isbn	issn	jpno	doi	iss_itemno	lccn	subject:unknown	subject:ndlsh	subject:bsh	subject:lcsh	classification:ndc9	classification:ddc	classification:ndc8	classification:ndc10	item_id	item_identifier	call_number	item_note	item_price	acquired_at	accepted_at	bookstore	budget_type	total_checkouts	circulation_status	shelf	library	item_created_at	item_updated_at
3	パーフェクトRuby on Rails	パーフェクト ルビー オン レイルズ	すがわら, まさのり, 1982-//前島, 真一//近藤, 宇智朗		技術評論社	2014-07	すがわらまさのり, 前島真一, 近藤宇智朗, 橋立友宏 著	2880	2018-01-08 21:27:20 +0900	2018-01-08 21:27:57 +0900	http://iss.ndl.go.jp/books/R100000002-I025470389-00				431p	23cm	volume								9784774165165		22426486		R100000002-I025470389-00		""	ウェブアプリケーション	""	""	547.483	""	""	""	3	001003	547|ス	""						0	Available On Shelf	first_shelf	yours	2018-01-08 21:27:57 +0900	2018-01-08 21:27:57 +0900
</pre>

### 2-1-3 書誌と所蔵のTSVの項目 {#bib_tsv_export_simple}

[書誌と所蔵のTSVの項目（1-1-3節参照）](enju_webapi_1.html#bib_tsv_export)を参照してください。

2-2 RDF/XML形式のデータを取得する {#section2-2}
-------------------------------

### 2-2-1 RDF/XML形式のデータ取得方法 {#section2-2-1}

#### 1. 書き出しをしたい検索結果詳細画面を表示させます。

#### 2. 検索結果詳細アドレス欄のURLの後ろに.rdfを追加します。

<pre>
例
（変更前）：http://localhost:8080/manifestations/2
（変更後）：http://localhost:8080/manifestations/2.rdf
</pre>

にします

※ 検索結果詳細画面の右メニューの[RDF/XML]リンクをクリックした先のURLと同様です(詳細：[利用者マニュアル「1-9-1 RDF/XML 形式で書き出し」](enju_user_1.html#section1-9-1)）。

#### 3. この検索結果詳細画面がRDF/XML形式で表示されます。

### 2-2-2 書誌のRDF/XML形式のデータの例 {#bib_rdf_example_simple}

<pre>
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;rdf:RDF xmlns="http://purl.org/rss/1.0/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcndl="http://ndl.go.jp/dcndl/terms/" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:prism="http://prismstandard.org/namespaces/basic/2.0/" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"&gt;
&lt;title&gt;Ruby on Rails入門 : 優しいRailsの育て方&lt;/title&gt;
&lt;link&gt;http://localhost:8080/manifestations/1&lt;/link&gt;
&lt;description&gt;秀和システム; 2006-08&lt;/description&gt;
&lt;/rdf:RDF&gt;
</pre>

{% include enju_webapi/1.4/toc.md %}
