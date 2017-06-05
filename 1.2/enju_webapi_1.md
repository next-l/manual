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

※ 検索結果画面の右メニューの[TSV]リンクをクリックした先のURLと同様です(詳細：利用者マニュアルの[「1-8-3 TSV 形式で書き出し」](enju_user_1.html#section1-8-3)）。

#### 3. この検索結果画面がTSV形式で表示されます。 

※現在、表示している検索結果のみを表示します。他の画面の検索結果は含みません。

### 1-1-2 書誌と所蔵のTSVの例 {#bib_tsv_example}

<pre>
manifestation_id	original_title	creator	contributor	publisher	pub_date	statement_of_responsibility	manifestation_price	manifestation_created_at	manifestation_updated_at	manifestation_identifier	access_address	note	isbn	issn	jpno	doi	iss_itemno	lccn	issn_l	subject:unknown	subject:ndlsh	subject:bsh	subject:lcsh	classification:ndc9	classification:ddc	classification:clno	classification:ndc8	item_id	item_identifier	call_number	item_price	acquired_at	accepted_at	bookstore	budget_type	circulation_status	shelf	library	item_created_at	item_updated_at
59	情報知識学会誌			情報知識学会		""		2016-02-01 22:32:40 +0900	2016-02-01 22:32:41 +0900	http://iss.ndl.go.jp/books/R100000002-I000010302329-00				18817661			R100000002-I000010302329-00		09171436								
58	Perlプログラミング : UNIX Programming	Wall, Larry//Schwartz, Randal L//近藤, 嘉雪, 1961-		ソフトバンク出版事業部	1993-02	Larry Wall, Randal L.Schwartz 著; 近藤嘉雪 訳	4500	2016-02-01 22:32:16 +0900	2016-02-01 22:32:21 +0900	http://iss.ndl.go.jp/books/R100000002-I000002233875-00			9784890523849		93026947		R100000002-I000002233875-00			""	プログラミング用言語	""	""	""	""	""	007.64
52	Ruby on Rails 3ポケットリファレンス	山田, 祥寛		技術評論社	2012-03	山田祥寛 著	2780	2016-01-25 16:53:22 +0900	2016-02-01 22:04:12 +0900	http://iss.ndl.go.jp/books/R100000002-I023338308-00	""	""	9784774149806		22044410		R100000002-I023338308-00			""	ウェブアプリケーション	""	""	547.483	""	""	""
42	基礎からわかる情報リテラシー : コンピュータ・インターネットと付き合う基礎知識	奥村, 晴彦 	奥村, 晴彦 （著）	技術評論社	2014-02	奥村晴彦 著	1480	2015-12-26 17:54:55 +0900	2016-01-03 18:11:59 +0900	http://iss.ndl.go.jp/books/R100000002-I025107686-00	http://sample.jp/zzz.html	注記・・・	9784774162133		22349643		R100000002-I025107686-00			""	aaa//bbb	ccc	""	007//007.58	""	K|a|b	""	41	1987501	K062||4	1900	2015-01-10 00:00:00 +0900		あさま書店	siryohi	Available On Shelf	first_shelf	yours	2016-01-03 15:37:47 +0900	2016-01-03 15:37:47 +0900
41	はじめてのPerl/CGIプログラミング : Linux/Windows対応	玉川, 純, 1973-		秀和システム	2005-12	玉川純 著	2600	2015-12-26 17:51:17 +0900	2015-12-26 17:51:24 +0900	http://iss.ndl.go.jp/books/R100000002-I000008025272-00			9784798012032		20953804		R100000002-I000008025272-00			""	インターネット//プログラミング (コンピュータ)	""	""	547.483	""	""	""
40	ハリー・ポッターと謎のプリンス	Rowling, J. K, 1965-//松岡, 佑子//Schlesinger, Dan, 1955-		静山社	2010-03	J.K.ローリング 作; 松岡佑子 訳; ダン・シュレシンジャー 画		2015-12-26 15:24:08 +0900	2015-12-26 15:26:19 +0900	http://iss.ndl.go.jp/books/R100000002-I000010816152-00			9784863890442		21729546		R100000002-I000010816152-00							933.7	""	""	""	40	986003							Available On Shelf	first_shelf	yours	2015-12-26 15:26:19 +0900	2015-12-26 15:26:19 +0900
39	ハリー・ポッターと謎のプリンス	Rowling, J. K, 1965-//松岡, 佑子//Schlesinger, Dan, 1955-		静山社	2010-03	J.K.ローリング 作; 松岡佑子 訳; ダン・シュレシンジャー 画		2015-12-26 15:23:34 +0900	2015-12-26 15:28:59 +0900	http://iss.ndl.go.jp/books/R100000002-I000010816007-00			9784863890435		21729541		R100000002-I000010816007-00							933.7	""	""	""	39	986002							On Loan	first_shelf	yours	2015-12-26 15:25:52 +0900	2015-12-26 15:28:59 +0900
38	クィディッチ今昔	Rowling, J. K, 1965-//松岡, 佑子		静山社	2014-03	J.K.ローリング 作; 松岡佑子 訳	620	2015-12-26 15:22:30 +0900	2016-01-31 21:21:37 +0900	http://iss.ndl.go.jp/books/R100000002-I025292085-00			9784863892514		22375950		R100000002-I025292085-00							933.7	""	""	""	38	986001							On Loan	first_shelf	yours	2015-12-26 15:25:23 +0900	2016-01-31 21:21:37 +0900
35	ハンガー・ゲーム	Collins, Suzanne//河井, 直子		メディアファクトリー	2009-10	スーザン・コリンズ 著; 河井直子 訳	1800	2015-12-25 13:31:41 +0900	2015-12-26 01:27:57 +0900	http://iss.ndl.go.jp/books/R100000002-I000010857500-00	http://sample.jp/zzz.html	""	9784840130639		21753740		R100000002-I000010857500-00							933.7	""	""	""	37	888701	933|コ|1						On Loan	first_shelf	yours	2015-12-25 13:32:32 +0900	2015-12-25 13:32:59 +0900
33	なにか架空の雑誌	へのへのもへじ	某某委員会	ありあり出版	2011	どこそこ委員会（編）	1900	2015-12-24 20:10:21 +0900	2015-12-26 14:22:17 +0900	567890	http://sample.jp/	注記は?		00279153
</pre>

### 1-1-3 書誌と所蔵のTSVの項目 {#bib_tsv_export}

次の項目が入っています(Enju Leaf 1.2.1)。

<!-- 全件エクスポート（Librarian権限以上のみ）、
検索結果一覧エクスポート、検索結果詳細エクスポートの出力項目は
1.2.0ではところ共通です。 
-->

* manifestation_id: 書誌ID
* original_title: 原題
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
* note: 注記
* extent: ページ数
* dimensions: 大きさ
* isbn： ISBN
* subject:unknown: 件名（unknown）※入力データによっては出力されないこともあります。
* subject:ndlsh: 件名（NDLSH）※入力データによっては出力されないこともあります。
* （入力データによってはほかにも subject:　からはじまるものがあります）
* classification:ndc9: 分類（NDC）※入力データによっては出力されないこともあります。
* （入力データによってはほかにも classification:　からはじまるものがあります）
* item_id: 所蔵データID(自動付与）
* item_identifier: 所蔵情報ID
* call_number: 請求記号
* item_price: 購入価格（Administrator権限、Librarian権限のときのみ出力）
* acquired_at: 受入日
* accepted_at: 検収日（エクスポートのみの項目）
* bookstore: 書店 （Administrator権限、Librarian権限のときのみ出力）
* budget_type: 予算種別（Administrator権限、Librarian権限のときのみ出力）
* circulation_status: 貸出状態
* shelf: 本棚
* library: 図書館
* item_created_at: 所蔵情報作成日（エクスポートのみの項目）
* item_updated_at: 所蔵情報更新日（エクスポートのみの項目）

※1 その他、書誌に登録されている識別子（例：jpno,ncid）は全て出力されます。

※2 分類や件名で複数あるものは//で区切られて出力されます。

{% include enju_webapi/1.2/toc.md %}
