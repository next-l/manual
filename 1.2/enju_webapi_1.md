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

#### 3. この検索結果画面の検索結果一覧が表示されます。

※現在、表示している検索結果のみを表示します。他の画面の検索結果は含みません。

参考：書誌と所蔵の検索結果TSV表示例(準備中)

### 1-1-2 書誌と所蔵のTSVで出力される項目 {#bib_tsv_export}

次の項目が入っています(Enju Leaf 1.2.0)。

<!-- 全件エクスポート（Librarian権限以上のみ）、
検索結果一覧エクスポート、検索結果詳細エクスポートの出力項目は
1.2.0ではところ共通です。 -->

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
* isbn： ISBN
* subject:unknown: 件名（unknown）※入力データによっては出力されないこともあります。
* subject:ndlsh: 件名（NDLSH）※入力データによっては出力されないこともあります。
* （入力データによってはほかにも subject:　からはじまるものがあります）
* classification:ndc9: 分類（NDC）※入力データによっては出力されないこともあります。
* （入力データによってはほかにも classification:　からはじまるものがあります）
* item_id: 所蔵データID(自動付与）
* item_identifier: 所蔵情報ID
* call_number: 請求記号
* item_price: 購入価格
* acquired_at: 受入日
* accepted_at: 検収日（エクスポートのみの項目）
* bookstore: 書店
* budget_type: 予算種別
* circulation_status: 貸出状態
* shelf: 本棚
* library: 図書館
* item_created_at: 所蔵情報作成日（エクスポートのみの項目）
* item_updated_at: 所蔵情報更新日（エクスポートのみの項目）

※1 その他、書誌に登録されている識別子（例：jpno,ncid）は全て出力されます。

※2 分類や件名で複数あるものは//で区切られて出力されます。

{% include enju_webapi/toc.md %}
