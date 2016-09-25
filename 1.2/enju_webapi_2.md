---
layout: page
title: 第2章 検索結果詳細を取得する - Next-L Enju Web APIマニュアル
title_short: 第2章 検索結果詳細を取得
group: enju_webapi
version: 1.2
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

※ 検索結果詳細画面の右メニューの[TSV]リンクをクリックした先のURLと同様です(詳細：利用者マニュアルの[「1-9-3 TSV 形式で書き出し」](enju_user_1.html#section1-9-3)）。

#### 3. この検索結果詳細画面がTSV形式で表示されます。

### 2-1-2 書誌と所蔵のTSVの例 {#bib_tsv_example_simple}

<pre>
manifestation_id	original_title	creator	contributor	publisher	pub_date	statement_of_responsibility	manifestation_price	manifestation_created_at	manifestation_updated_at	manifestation_identifier	access_address	note	isbn	issn	jpno	doi	iss_itemno	lccn	issn_l	subject:unknown	subject:ndlsh	subject:bsh	subject:lcsh	classification:ndc9	classification:ddc	classification:clno	classification:ndc8	item_id	item_identifier	call_number	item_price	acquired_at	accepted_at	bookstore	budget_type	circulation_status	shelf	library	item_created_at	item_updated_at
5	Ruby on Rails環境構築ガイド : ソース管理から公開までを徹底解説 : 定番ツールを使いこなして今日から即戦力!	黒田, 努		インプレスジャパン//インプレスコミュニケーションズ	2013-03	黒田努 著	2800	2015-12-06 12:30:03 +0900	2015-12-09 12:32:14 +0900	http://iss.ndl.go.jp/books/R100000002-I024310898-00			9784844333753		22220800		R100000002-I024310898-00							547.483	""	""	""	4	909092							On Loan	first_shelf	yours	2015-12-06 17:33:57 +0900	2015-12-06 17:34:13 +0900
</pre>

### 2-1-3 書誌と所蔵のTSVの項目 {#bib_tsv_export_simple}

[書誌と所蔵のTSVの項目](enju_webapi_1.html#bib_tsv_export)を参照してください。

{% include enju_webapi/1.2/toc.md %}
