---
layout: page
title: 第4章 外部システムから書誌情報にリンクする (OpenURL) - Next-L Enju Web APIマニュアル
title_short: 第4章 OpenURL
group: enju_webapi
version: 1.4
---

* Contents
{:toc}

第4章 外部システムから書誌情報にリンクする (OpenURL) {#section4}
==========================================

Enjuは資料の検索結果などに外部のサービスからリンクするOpenURLに対応しています。

OpenURLの詳細な仕様は [OpenURL Version 0.1](http://alcme.oclc.org/openurl/docs/pdf/openurl-01.pdf) などをご覧ください。

4-1 アクセス先（ベースURL） {#section4-1}
--------------------------

OpenURLのアクセス先は以下のように、Enjuの稼働するサーバアドレスに `/manifestations?api=openurl` をつけたものになります。

```
http://localhost:8080/manifestations?api=openurl&{_Parameters_}
```

4-2 使用できる検索項目パラメータ {#section4-2}
----------------------------

EnjuがOpenURLで使用できる検索項目は以下のものです。

{:class="table table-bordered"}
|パラメータ名|Enju上の項目|
|:-----|:-----------|
|isbn|ISSN|
|issn|ISBN|
|title|タイトル|
|atitle|タイトル|
|jtitle|タイトル|
|btitle|タイトル|
|au|著者名|
|aulast|著者名|
|aufirst|著者名|
|pub|出版者名|

4-3 検索結果と使用例 {#section4-3}
--------------------

指定したURLに移動すると、Enju上の書誌情報の検索結果画面が表示されます。

例1: ISBNを指定してリンクする
```
http://localhost:8080/manifestations?api=openurl&isbn=978-4-7907-1695-2
```

例2: 著者名(`逸村裕`)とタイトル(`図書館情報学を学ぶ人のために`)を指定してリンクする
```
http://localhost:8080/manifestations?api=openurl&au=%E9%80%B8%E6%9D%91%E8%A3%95&title=%E5%9B%B3%E6%9B%B8%E9%A4%A8%E6%83%85%E5%A0%B1%E5%AD%A6%E3%82%92%E5%AD%A6%E3%81%B6%E4%BA%BA%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AB
```

{% include enju_webapi/1.4/toc.md %}
