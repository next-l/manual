---
layout: page
title: 第1章 資料を検索する - Next-L Enju 利用者マニュアル
title_short: 第1章 資料を検索する
group: enju_user
version: 1.2
---

* Contents
{:toc}

第1章 資料を検索する {#section1}
================================

Enjuを利用した資料の検索方法には、演算子やフィールド名を直接入力して検索する方法と、該当のテキストボックスに検索語入力する方法があります。

* キーワードで検索する
* 条件を詳しく指定して検索する
* 演算子やフィールド名を使って検索をする

1-1 キーワードで検索する {#section1-1}
---------------------------------------

資料を指定したキーワードで検索できます。

#### 1. トップページの検索語にキーワードを入力し、［検索］ボタンをクリックします。  

![キーワードを入力](../assets/images/1.1/image_operation_242.png)

<div class="alert alert-info memo">【Memo】スペースで区切りながらキーワードを入力すると、複数のキーワードに一致する資料を検索でき
ます。
</div>

#### 2. キーワードに該当する資料が検索されます。詳細を知りたい資料のタイトルをクリックします。  

![該当する資料が検索される](../assets/images/1.1/image_operation_244.png)

#### 3. 資料の詳細が表示されます。

![該当する資料の表示](../assets/images/1.1/image_operation_244_2.png)

1-2 条件を詳しく指定して検索する {#section1-2}
----------------------------------------------

条件を詳しく指定して、資料を検索することもできます。

#### 1. トップページの［（条件を詳しく指定して検索）］をクリックします。  

![（条件を詳しく指定して検索）クリック](../assets/images/1.1/image_operation_245.png)

#### 2. 複数の条件を指定して［検索］ボタンをクリックします。  

![複数の条件を指定](../assets/images/1.2/advanced_search_1.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* ISBN はハイフンありでもハイフンなしでも検索できます
* 請求記号は前方一致検索します。
* 分類は前方一致検索します。 

</div>

1-3 フィールド名や演算子を使って検索する {#section1-3}
-------------------------------------------------------

「and」や「or」や 「()」 などの演算子と、フィールド名を組み合わせた検索式を作成できます。

検索式の例：ruby and (Web or ライブラリ)

より詳しい説明については、 [issue #130](https://github.com/next-l/enju_leaf/issues/130)　を参照してください。

1-4 検索結果を絞り込む {#section1-4}
------------------------------------

検索結果の画面に表示された資料の情報は、画面右側のメニューにある絞込みメニュー（ファセット）を使って絞り込めます。
絞り込める項目は標準では以下の5つが用意されています：

* 資料の形態
* 所蔵する図書館
* 資料の言語
* 出版年
* 予約可能の可否

#### 1. 検索結果を表示する。

![検索結果を表示](../assets/images/1.1/search_result_facet_1.png)

#### 2. 出版日の項目から「2010 - 2019」と書かれたリンクをクリックします。

![出版年を使って絞り込む](../assets/images/1.1/search_result_facet_2.png)

<div class="alert alert-info memo">【Memo】それぞれの絞り込みリンクの表記、たとえば「2010 - 2019 (7)」のうち、カッコ内の数字（7）は、この絞り込みにより該当する資料のヒット件数を示しています。参考にしてみてください。
</div>

#### 3. 出版年が2010年以降の範囲に絞り込まれた検索結果に移ります。

![出版年 2010 - 2019 での絞り込み結果](../assets/images/1.1/search_result_facet_3.png)

右側の絞り込みリンクが選択した部分（出版日: 2010 - 2019）だけになり、「この絞り込みを解除する」というリンクが付きます。
絞込みを解除したい場合はこの解除するリンクをクリックしてください。
さらに、別の項目も使って絞り込みたい場合は他のファセットを選択することも可能です。

絞り込んだ中から、詳しく見たい資料を選択してクリックします。

1-5 検索結果のフィード(RSS)を取得する {#sction1-5}
---------------------------------------------

検索結果のRSSを取得することができます。
検索結果の最初の10件（最近登録された10件）を得ることができます。
※検索結果が複数の画面にわたる場合でも、
どの画面の[検索結果フィード]でもかならず最近登録された10件のみとなります。

#### 1. 右メニューの[検索結果のフィード]をクリックします。

![検索結果のフィード](../assets/images/1.1/search_result_rss_1.png)

#### 2. 最近登録された10件のRSSが表示されます。

![RSS](../assets/images/1.1/search_result_rss_2.png)

1-6 検索結果一覧の書き出し {#section1-6}
------------------------------------

### 1-6-1 RDF/XML 形式で書き出し {#section1-6-1}

#### 1. 書き出しをしたい検索結果画面を表示させます。[RDF/XML]リンクをクリックします

![RDF/XML](../assets/images/1.1/search_result_rdf_1.png)

※　現在、画面でみえている結果の分だけが書き出しができます。

#### 2. RDF/XML 形式のファイルがダウンロードできます。

<pre>
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;rdf:RDF xmlns="http://purl.org/rss/1.0/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcndl="http://ndl.go.jp/dcndl/terms/" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:prism="http://prismstandard.org/namespaces/basic/2.0/" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"&gt;
  &lt;channel rdf:about="http://localhost:8080/manifestations?action=index&amp;commit=%E6%A4%9C%E7%B4%A2&amp;controller=manifestations&amp;format=rdf&amp;only_path=true&amp;page=2&amp;pub_date_from=2000&amp;pub_date_until=2009&amp;query=&amp;reservable=true&amp;utf8=%E2%9C%93"&gt;
    &lt;title&gt;検索語 date_of_publication_d:[1999-12-31T15:00:00Z TO 2009-12-31T14:59:59Z] による えんじゅ図書館 の資料の検索結果&lt;/title&gt;
    &lt;link&gt;http://localhost:8080/manifestations?commit=%E6%A4%9C%E7%B4%A2&amp;page=2&amp;pub_date_from=2000&amp;pub_date_until=2009&amp;query=&amp;reservable=true&amp;utf8=%E2%9C%93&lt;/link&gt;
    &lt;description&gt;Next-L Enju, an open source integrated library system developed by Project Next-L&lt;/description&gt;
    &lt;language&gt;ja&lt;/language&gt;
    &lt;ttl&gt;60&lt;/ttl&gt;
    &lt;items&gt;
      &lt;rdf:Seq&gt;
        &lt;rdf:li rdf:resource="http://localhost:8080/manifestations/3"/&gt;
        &lt;rdf:li rdf:resource="http://localhost:8080/manifestations/2"/&gt;
        &lt;rdf:li rdf:resource="http://localhost:8080/manifestations/1"/&gt;
      &lt;/rdf:Seq&gt;
    &lt;/items&gt;
  &lt;/channel&gt;
&lt;titleInfo&gt;
  &lt;title&gt;Rails of Ruby on Rails : Case of Locusandwonders.com&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;titleInfo type="alternative"&gt;
  &lt;title/&gt;
&lt;/titleInfo&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;清水, 智雄&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;Plan de Sens&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;typeOfResource&gt;text&lt;/typeOfResource&gt;
&lt;originInfo&gt;
  &lt;publisher&gt;毎日コミュニケーションズ&lt;/publisher&gt;
  &lt;dateIssued&gt;2008-05-01 00:00:00 +0900&lt;/dateIssued&gt;
  &lt;frequency&gt;unknown&lt;/frequency&gt;
&lt;/originInfo&gt;
&lt;language&gt;
  &lt;languageTerm authority="iso639-2b" type="code"&gt;jpn&lt;/languageTerm&gt;
&lt;/language&gt;
&lt;physicalDescription&gt;
  &lt;form authority="marcform"&gt;volume&lt;/form&gt;
  &lt;extent/&gt;
&lt;/physicalDescription&gt;
&lt;subject&gt;
&lt;/subject&gt;
&lt;classification authority="ndc9"&gt;547.483&lt;/classification&gt;
&lt;abstract/&gt;
&lt;note/&gt;
&lt;identifier type="isbn"&gt;9784839922214&lt;/identifier&gt;
&lt;recordInfo&gt;
  &lt;recordCreationDate&gt;2015-12-05 12:34:42 +0900&lt;/recordCreationDate&gt;
  &lt;recordChangeDate&gt;2015-12-06 17:33:23 +0900&lt;/recordChangeDate&gt;
  &lt;recordIdentifier&gt;http://localhost:8080/manifestations/3&lt;/recordIdentifier&gt;
&lt;/recordInfo&gt;
&lt;titleInfo&gt;
  &lt;title&gt;レッスン&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;titleInfo type="alternative"&gt;
  &lt;title&gt;The lesson&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;Pearson, Carol Lynn&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;灰島, かり, 1950-&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;ささめや, ゆき, 1943-&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;typeOfResource&gt;text&lt;/typeOfResource&gt;
&lt;originInfo&gt;
  &lt;publisher&gt;平凡社&lt;/publisher&gt;
  &lt;dateIssued&gt;2002-12-01 00:00:00 +0900&lt;/dateIssued&gt;
  &lt;frequency&gt;unknown&lt;/frequency&gt;
&lt;/originInfo&gt;
&lt;language&gt;
  &lt;languageTerm authority="iso639-2b" type="code"&gt;jpn&lt;/languageTerm&gt;
&lt;/language&gt;
&lt;physicalDescription&gt;
  &lt;form authority="marcform"&gt;volume&lt;/form&gt;
  &lt;extent/&gt;
&lt;/physicalDescription&gt;
&lt;subject&gt;
&lt;/subject&gt;
&lt;classification authority="ndc9"&gt;933.7&lt;/classification&gt;
&lt;abstract&gt;1998年全米で大ベストセラーとなった人生の絵本。レッスンとは,「生きる意味」を探すこと。美しい文章と絵で綴られた心うつ物語。 (日本児童図書出版協会)&lt;/abstract&gt;
&lt;note/&gt;
&lt;identifier type="isbn"&gt;9784582831351&lt;/identifier&gt;
&lt;recordInfo&gt;
  &lt;recordCreationDate&gt;2015-11-29 12:08:23 +0900&lt;/recordCreationDate&gt;
  &lt;recordChangeDate&gt;2015-12-10 01:42:21 +0900&lt;/recordChangeDate&gt;
  &lt;recordIdentifier&gt;http://localhost:8080/manifestations/2&lt;/recordIdentifier&gt;
&lt;/recordInfo&gt;
&lt;titleInfo&gt;
  &lt;title&gt;はじめてのRuby on Rails : 話題の「Webアプリケーション・フレームワーク」が使える! : instant rails&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;titleInfo type="alternative"&gt;
  &lt;title/&gt;
&lt;/titleInfo&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;清水, 美樹&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;typeOfResource&gt;text&lt;/typeOfResource&gt;
&lt;originInfo&gt;
  &lt;publisher&gt;工学社&lt;/publisher&gt;
  &lt;dateIssued&gt;2006-08-01 00:00:00 +0900&lt;/dateIssued&gt;
  &lt;frequency&gt;unknown&lt;/frequency&gt;
&lt;/originInfo&gt;
&lt;language&gt;
  &lt;languageTerm authority="iso639-2b" type="code"&gt;jpn&lt;/languageTerm&gt;
&lt;/language&gt;
&lt;physicalDescription&gt;
  &lt;form authority="marcform"&gt;volume&lt;/form&gt;
  &lt;extent/&gt;
&lt;/physicalDescription&gt;
&lt;subject&gt;
&lt;/subject&gt;
&lt;classification authority="ndc9"&gt;547.483&lt;/classification&gt;
&lt;abstract/&gt;
&lt;note/&gt;
&lt;identifier type="isbn"&gt;9784777512324&lt;/identifier&gt;
&lt;recordInfo&gt;
  &lt;recordCreationDate&gt;2015-11-29 12:05:32 +0900&lt;/recordCreationDate&gt;
  &lt;recordChangeDate&gt;2015-12-14 23:50:35 +0900&lt;/recordChangeDate&gt;
  &lt;recordIdentifier&gt;http://localhost:8080/manifestations/1&lt;/recordIdentifier&gt;
&lt;/recordInfo&gt;
&lt;/rdf:RDF&gt;
</pre>

### 1-6-2 MOS 形式で書き出し {#section1-6-2}

#### 1. 書き出しをしたい検索結果画面を表示させます。[MODS]リンクをクリックします

![MOS](../assets/images/1.1/search_result_mods_1.png)

※　現在、画面でみえている結果の分だけが書き出しができます。

#### 2. MOS 形式のファイルがダウンロードできます。

<pre>
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;modsCollection xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.loc.gov/mods/v3"&gt;
&lt;titleInfo&gt;
  &lt;title&gt;Rails of Ruby on Rails : Case of Locusandwonders.com&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;titleInfo type="alternative"&gt;
  &lt;title/&gt;
&lt;/titleInfo&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;清水, 智雄&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;Plan de Sens&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;typeOfResource&gt;text&lt;/typeOfResource&gt;
&lt;originInfo&gt;
  &lt;publisher&gt;毎日コミュニケーションズ&lt;/publisher&gt;
  &lt;dateIssued&gt;2008-05-01 00:00:00 +0900&lt;/dateIssued&gt;
  &lt;frequency&gt;unknown&lt;/frequency&gt;
&lt;/originInfo&gt;
&lt;language&gt;
  &lt;languageTerm authority="iso639-2b" type="code"&gt;jpn&lt;/languageTerm&gt;
&lt;/language&gt;
&lt;physicalDescription&gt;
  &lt;form authority="marcform"&gt;volume&lt;/form&gt;
  &lt;extent/&gt;
&lt;/physicalDescription&gt;
&lt;subject&gt;
&lt;/subject&gt;
&lt;classification authority="ndc9"&gt;547.483&lt;/classification&gt;
&lt;abstract/&gt;
&lt;note/&gt;
&lt;identifier type="isbn"&gt;9784839922214&lt;/identifier&gt;
&lt;recordInfo&gt;
  &lt;recordCreationDate&gt;2015-12-05 12:34:42 +0900&lt;/recordCreationDate&gt;
  &lt;recordChangeDate&gt;2015-12-06 17:33:23 +0900&lt;/recordChangeDate&gt;
  &lt;recordIdentifier&gt;http://localhost:8080/manifestations/3&lt;/recordIdentifier&gt;
&lt;/recordInfo&gt;
&lt;titleInfo&gt;
  &lt;title&gt;レッスン&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;titleInfo type="alternative"&gt;
  &lt;title&gt;The lesson&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;Pearson, Carol Lynn&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;灰島, かり, 1950-&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;ささめや, ゆき, 1943-&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;typeOfResource&gt;text&lt;/typeOfResource&gt;
&lt;originInfo&gt;
  &lt;publisher&gt;平凡社&lt;/publisher&gt;
  &lt;dateIssued&gt;2002-12-01 00:00:00 +0900&lt;/dateIssued&gt;
  &lt;frequency&gt;unknown&lt;/frequency&gt;
&lt;/originInfo&gt;
&lt;language&gt;
  &lt;languageTerm authority="iso639-2b" type="code"&gt;jpn&lt;/languageTerm&gt;
&lt;/language&gt;
&lt;physicalDescription&gt;
  &lt;form authority="marcform"&gt;volume&lt;/form&gt;
  &lt;extent/&gt;
&lt;/physicalDescription&gt;
&lt;subject&gt;
&lt;/subject&gt;
&lt;classification authority="ndc9"&gt;933.7&lt;/classification&gt;
&lt;abstract&gt;1998年全米で大ベストセラーとなった人生の絵本。レッスンとは,「生きる意味」を探すこと。美しい文章と絵で綴られた心うつ物語。 (日本児童図書出版協会)&lt;/abstract&gt;
&lt;note/&gt;
&lt;identifier type="isbn"&gt;9784582831351&lt;/identifier&gt;
&lt;recordInfo&gt;
  &lt;recordCreationDate&gt;2015-11-29 12:08:23 +0900&lt;/recordCreationDate&gt;
  &lt;recordChangeDate&gt;2015-12-10 01:42:21 +0900&lt;/recordChangeDate&gt;
  &lt;recordIdentifier&gt;http://localhost:8080/manifestations/2&lt;/recordIdentifier&gt;
&lt;/recordInfo&gt;
&lt;titleInfo&gt;
  &lt;title&gt;はじめてのRuby on Rails : 話題の「Webアプリケーション・フレームワーク」が使える! : instant rails&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;titleInfo type="alternative"&gt;
  &lt;title/&gt;
&lt;/titleInfo&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;清水, 美樹&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;typeOfResource&gt;text&lt;/typeOfResource&gt;
&lt;originInfo&gt;
  &lt;publisher&gt;工学社&lt;/publisher&gt;
  &lt;dateIssued&gt;2006-08-01 00:00:00 +0900&lt;/dateIssued&gt;
  &lt;frequency&gt;unknown&lt;/frequency&gt;
&lt;/originInfo&gt;
&lt;language&gt;
  &lt;languageTerm authority="iso639-2b" type="code"&gt;jpn&lt;/languageTerm&gt;
&lt;/language&gt;
&lt;physicalDescription&gt;
  &lt;form authority="marcform"&gt;volume&lt;/form&gt;
  &lt;extent/&gt;
&lt;/physicalDescription&gt;
&lt;subject&gt;
&lt;/subject&gt;
&lt;classification authority="ndc9"&gt;547.483&lt;/classification&gt;
&lt;abstract/&gt;
&lt;note/&gt;
&lt;identifier type="isbn"&gt;9784777512324&lt;/identifier&gt;
&lt;recordInfo&gt;
  &lt;recordCreationDate&gt;2015-11-29 12:05:32 +0900&lt;/recordCreationDate&gt;
  &lt;recordChangeDate&gt;2015-12-14 23:50:35 +0900&lt;/recordChangeDate&gt;
  &lt;recordIdentifier&gt;http://localhost:8080/manifestations/1&lt;/recordIdentifier&gt;
&lt;/recordInfo&gt;
&lt;/modsCollection&gt;
</pre>

### 1-6-3 TSV 形式で書き出し {#section1-6-3}

#### 1. 書き出しをしたい検索結果画面を表示させます。[TSV]リンクをクリックします

![TSV](../assets/images/1.1/search_result_tsv_1.png)

※　現在、画面でみえている結果の分だけが書き出しができます。

#### 2. TSV 形式のファイルがダウンロードできます。

<pre>
manifestation_identifier	original_title	creator	publisher	isbn	pub_date	note
http://iss.ndl.go.jp/books/R100000002-I000009366581-00	"Rails of Ruby on Rails : Case of Locusandwonders.com"	清水, 智雄; Plan de Sens	毎日コミュニケーションズ	["9784839922214"]	2008-05	
http://iss.ndl.go.jp/books/R100000002-I000004040061-00	"レッスン"	Pearson, Carol Lynn; 灰島, かり, 1950-; ささめや, ゆき, 1943-	平凡社	["9784582831351"]	2002-12	
http://iss.ndl.go.jp/books/R100000002-I000008276603-00	"はじめてのRuby on Rails : 話題の「Webアプリケーション・フレームワーク」が使える! : instant rails"	清水, 美樹	工学社	["9784777512324"]	2006-08	
</pre>


1-7 検索結果詳細の書き出し {#section1-7}
-----------------------------------------

### 1-7-1 RDF/XML 形式で書き出し {#section1-7-1}

#### 1. 書き出しをしたい検索結果詳細画面を表示させます。[RDF/XML]リンクをクリックし
ます

![RDF/XML](../assets/images/1.1/search_result_full_rdf_1.png)

#### 2. RDF/XML 形式のファイルがダウンロードできます。

<pre>
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;rdf:RDF xmlns="http://purl.org/rss/1.0/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcndl="http://ndl.go.jp/dcndl/terms/" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:prism="http://prismstandard.org/namespaces/basic/2.0/" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"&gt;
&lt;titleInfo&gt;
  &lt;title&gt;レッスン&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;titleInfo type="alternative"&gt;
  &lt;title&gt;The lesson&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;Pearson, Carol Lynn&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;灰島, かり, 1950-&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;ささめや, ゆき, 1943-&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;typeOfResource&gt;text&lt;/typeOfResource&gt;
&lt;originInfo&gt;
  &lt;publisher&gt;平凡社&lt;/publisher&gt;
  &lt;dateIssued&gt;2002-12-01 00:00:00 +0900&lt;/dateIssued&gt;
  &lt;frequency&gt;unknown&lt;/frequency&gt;
&lt;/originInfo&gt;
&lt;language&gt;
  &lt;languageTerm authority="iso639-2b" type="code"&gt;jpn&lt;/languageTerm&gt;
&lt;/language&gt;
&lt;physicalDescription&gt;
  &lt;form authority="marcform"&gt;volume&lt;/form&gt;
  &lt;extent/&gt;
&lt;/physicalDescription&gt;
&lt;subject&gt;
&lt;/subject&gt;
&lt;classification authority="ndc9"&gt;933.7&lt;/classification&gt;
&lt;abstract&gt;1998年全米で大ベストセラーとなった人生の絵本。レッスンとは,「生きる意味」を探すこと。美しい文章と絵で綴られた心うつ物語。 (日本児童図書出版協会)&lt;/abstract&gt;
&lt;note/&gt;
&lt;identifier type="isbn"&gt;9784582831351&lt;/identifier&gt;
&lt;recordInfo&gt;
  &lt;recordCreationDate&gt;2015-11-29 12:08:23 +0900&lt;/recordCreationDate&gt;
  &lt;recordChangeDate&gt;2015-12-10 01:42:21 +0900&lt;/recordChangeDate&gt;
  &lt;recordIdentifier&gt;http://localhost:8080/manifestations/2&lt;/recordIdentifier&gt;
&lt;/recordInfo&gt;
&lt;/rdf:RDF&gt;
</pre>

### 1-7-2 MOS 形式で書き出し {#section1-7-2}

#### 1. 書き出しをしたい検索結果詳細画面を表示させます。[MODS]リンクをクリックします

![MOS](../assets/images/1.1/search_result_full_mods_1.png)

#### 2. MOS 形式のファイルがダウンロードできます。

<pre>
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;mods version="3.3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.loc.gov/mods/v3"&gt;
&lt;titleInfo&gt;
  &lt;title&gt;レッスン&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;titleInfo type="alternative"&gt;
  &lt;title&gt;The lesson&lt;/title&gt;
&lt;/titleInfo&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;Pearson, Carol Lynn&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;灰島, かり, 1950-&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;name type="personal"&gt;
  &lt;namePart&gt;ささめや, ゆき, 1943-&lt;/namePart&gt;
  &lt;role&gt;
    &lt;roleTerm type="text" authority="marcrelator"&gt;creator&lt;/roleTerm&gt;
  &lt;/role&gt;
&lt;/name&gt;
&lt;typeOfResource&gt;text&lt;/typeOfResource&gt;
&lt;originInfo&gt;
  &lt;publisher&gt;平凡社&lt;/publisher&gt;
  &lt;dateIssued&gt;2002-12-01 00:00:00 +0900&lt;/dateIssued&gt;
  &lt;frequency&gt;unknown&lt;/frequency&gt;
&lt;/originInfo&gt;
&lt;language&gt;
  &lt;languageTerm authority="iso639-2b" type="code"&gt;jpn&lt;/languageTerm&gt;
&lt;/language&gt;
&lt;physicalDescription&gt;
  &lt;form authority="marcform"&gt;volume&lt;/form&gt;
  &lt;extent/&gt;
&lt;/physicalDescription&gt;
&lt;subject&gt;
&lt;/subject&gt;
&lt;classification authority="ndc9"&gt;933.7&lt;/classification&gt;
&lt;abstract&gt;1998年全米で大ベストセラーとなった人生の絵本。レッスンとは,「生きる意味」を探すこと。美しい文章と絵で綴られた心うつ物語。 (日本児童図書出版協会)&lt;/abstract&gt;
&lt;note/&gt;
&lt;identifier type="isbn"&gt;9784582831351&lt;/identifier&gt;
&lt;recordInfo&gt;
  &lt;recordCreationDate&gt;2015-11-29 12:08:23 +0900&lt;/recordCreationDate&gt;
  &lt;recordChangeDate&gt;2015-12-10 01:42:21 +0900&lt;/recordChangeDate&gt;
  &lt;recordIdentifier&gt;http://localhost:8080/manifestations/2&lt;/recordIdentifier&gt;
&lt;/recordInfo&gt;
&lt;/mods&gt;
</pre>

### 1-7-3 TSV 形式で書き出し {#section1-7-3}

#### 1. 書き出しをしたい検索結果詳細画面を表示させます。[TSV]リンクをクリックします

![TSV](../assets/images/1.1/search_result_full_tsv_1.png)

#### 2. TSV 形式のファイルがダウンロードできます。

※出力される項目の詳細：[【Column】TSVファイルで出力される項目](enju_operation_4.html#bib_tsv_export)

<pre>
manifestation_id	original_title	creator	contributor	publisher	pub_date	statement_of_responsibility	manifestation_price	manifestation_created_at	manifestation_updated_at	manifestation_identifier	access_address	note	isbn	issn	jpno	doi	iss_itemno	lccn	issn_l	subject:unknown	subject:ndlsh	subject:bsh	subject:lcsh	classification:ndc9	classification:ddc	classification:clno	item_id	item_identifier	call_number	item_price	acquired_at	accepted_at	bookstore	budget_type	circulation_status	shelf	library	item_created_at	item_updated_at
2	レッスン	Pearson, Carol Lynn//灰島, かり, 1950-//ささめや, ゆき, 1943-		平凡社	2002-12	キャロル・リン・ピアソン 文; 灰島かり 訳; ささめやゆき 画	1400	2015-11-29 12:08:23 +0900	2015-12-24 00:03:12 +0900	http://iss.ndl.go.jp/books/R100000002-I000004040061-00			9784582831351		20364486		R100000002-I000004040061-00							933.7	""	""	2	300002							On Loan	first_shelf	yours	2015-12-05 12:36:28 +0900	2015-12-05 12:37:52 +0900
</pre>

1-8 検索結果詳細を電子メールで送る {#section1-8}
------------------------------------------------

メールアドレスを登録しており、ログインしていると、
検索結果詳細を電子メールで送ることができます。

※　メールアドレスの登録方法は[「3-2メールアドレスや名前などを変更する」](https://next-l.github.io/manual/enju_user_3.html#section3-2)を参照してください。

#### 1. 電子メールで送りたい検索結果詳細画面を表示させます。[書誌情報を電子メールで送信する]リンクをクリックします

![mail](../assets/images/1.1/search_result_full_mail_1.png)

#### 2. [OK]をクリックします。

![ok](../assets/images/1.2/image_alert.png)

#### 3. 電子メールで送られてきます。

![mail_body](../assets/images/1.1/search_result_full_mail_3.png)

{% include enju_user/toc.md %}
