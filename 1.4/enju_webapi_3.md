---
layout: page
title: 第3章 書誌情報をまとめて取得する (OAI-PMH) - Next-L Enju Web APIマニュアル
title_short: 第3章 OAI-PMH
group: enju_webapi
version: 1.4
---

* Contents
{:toc}

第3章 書誌情報をまとめて取得する (OAI-PMH) {#section2}
==========================================

Enjuは資料の書誌情報全体をまとめて取得するOAI-PMIハーベスティングに対応しています。

OAI-PMHの詳細な仕様は [OAI-PMH2.0日本語訳（https://www.nii.ac.jp/irp/archive/translation/oai-pmh2.0/）](https://www.nii.ac.jp/irp/archive/translation/oai-pmh2.0/) などをご覧ください。

3-1 アクセス先（ベースURL） {#section3-1}
--------------------------

OAI-PMHのアクセス先は以下のように、Enjuの稼働するサーバアドレスに `/oai` をつけたものになります。

```
http://localhost:8080/oai?verb={_Verb_}
```

3-2 取得できるメタデータ形式 {#section3-2}
----------------------------

EnjuがOAI-PMHで提供するメタデータ形式は Dublin Core, junii2, DCNDL の3種類に対応しています。
それぞれメタデータ名称として oai_dc, junii2, dcndl を指定してください。

3-3 サーバ情報を取得する (Identify) {#section3-3}
-----------------------------------

サーバ情報を取得するには Identify リクエストを送ります。

```
http://localhost:8080/oai?verb=Identify
```

3-4 対応メタデータ形式を確認する (ListMetadataFormats) {#section3-4}
------------------------------------------------------

OAI-PMHで提供可能なメタデータ形式の一覧を取得するには ListMetadataFormats リクエストを送ります。

```
http://localhost:8080/oai?verb=ListMetadataFormats
```

3-5 書誌情報を取得する (ListRecords) {#section3-5}
------------------------------------

書誌情報レコードを取得するには ListRecords リクエストを送ります。
取得されるメタデータ形式として、`metadataPrefix` パラメータで指定します。

DCNDLの場合:
```
http://localhost:8080/oai?verb=ListRecords&metadataPrefix=dcndl
```

junii2の場合:
```
http://localhost:8080/oai?verb=ListRecords&metadataPrefix=junii2
```

一度に取得できるレコード件数は100件までです。
必要に応じて、``resumptionToken``パラメータを使って複数回リクエストを送ることにより、Enju内の書誌情報レコードをすべて取得するハーベスティングを実現できます。

そのほか、``from``, ``until`` パラメータを使って、更新日付を限定したレコード取得も可能です。

更新日付によって限定したレコードの取得の例（2016年4月1日から2016年6月30日まで、DCNDL形式での取得）:
```
http://localhost:8080/oai?verb=ListRecords&metadataPrefix=dcndl&from=2016-04-01&until=2016-06-30
```

{% include enju_webapi/1.4/toc.md %}
