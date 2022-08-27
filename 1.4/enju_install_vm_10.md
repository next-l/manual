---
layout: page
title: 第10章 その他（カスタマイズなど） - Next-L Enju インストールマニュアル（Docker編）
title_short: 第10章 その他（カスタマイズなど）
group: enju_install_vm
version: 1.4
---

* Contents
{:toc}

{::comment} misc.md {:/comment}

第10章 その他（カスタマイズなど） {#section10}
========================

10-1 Enjuを運用するにあたっての留意点・注意点 {#section10-1}
-------------------------------------------------------------

Enjuサーバは，外部からネットワーク経由でアクセスすることができるサービスとして運用されます。したがって，そのセキュリティ管理などには十分に気を配る必要があります。Enjuサーバ自体は，配付時点での最新の状況に対応できるようにセキュリティ対策を講じていますが，日進月歩のネットワーク環境では，新しいネットワーク上の脅威が発生する可能性もあります。このような状況に対応するため，運用に際しては，特に以下の２つにご注意ください。

1. 最新の配付パッケージを使用すること：Enjuコンテナについても，今後，バージョンアップを重ねるたびに配付を予定しています。機能面での充実というだけではなく，セキュリティ面からも最新のパッケージを使用ください。
2. 不必要な外部からのアクセスを禁止すること：場合によっては，ファイアウォールの導入やリモートルータでのフィルタリングについても検討した方が良いこともあるでしょう。

10-2 「条件を詳しく指定して検索」の画面をカスタマイズする {#section10-2}
-----------------------------------------------------------------------

Enju 「条件を詳しく指定して検索」の画面をカスタマイズする方法を説明します。
設定する画面がないため、これはサーバー上の作業をする必要があります。

1. Enjuをインストールしたディレクトリに移動します。
    ```
    cd enju_leaf
    ```
1. Enjuを停止します。
    ```
    docker compose down
    ```
1. 以下のファイルの中身を編集して保存します。
    ```
    app/views/page/advanced_search.html.erb
    ```
1. Enjuを再起動し、詳細検索画面をリロードして確認します。修正が必要なら 2. と3. の手順を行います。
    ```
    docker compose up -d
    ```

10-3 トップの画面の検索フォームをカスタマイズする {#section10-3}
-----------------------------------------------------------------------

Enju トップの画面の検索フォームをカスタマイズする方法を説明します。
設定する画面がないため、これはサーバー上の作業をする必要があります。

1. Enjuをインストールしたディレクトリに移動します。
    ```
    cd enju_leaf
    ```
1. Enjuを停止します。
    ```
    docker compose down
    ```
1. 以下のファイルの中身を編集して保存します。
    ```
    app/views/page/_search_form.html.erb
    ```
1. Enjuを再起動し、詳細検索画面をリロードして確認します。修正が必要なら 2. と3. の手順を行います。
    ```
    docker compose up -d
    ```

10-4 検索結果一覧画面の検索フォームをカスタマイズする {#section10-4}
-----------------------------------------------------------------------

Enju 検索結果一覧画面の検索フォームをカスタマイズする方法を説明します。
設定する画面がないため、これはサーバー上の作業をする必要があります。

1. [10-2節](#section10-2) の 1. 〜 2. と同様に、Enjuを停止します。
1. `app/views/manifestations/_index_form.html.erb`を編集します。
1. [10-2節](#section10-2) の 4. と同様に、Enjuを起動します。

10-5 検索結果一覧画面に表示項目を追加する {#section10-5}
--------------------------------------------------------

Enju 検索結果一覧画面に表示される書誌情報や所蔵情報の表示内容をカスタマイズする方法を説明します。
設定する画面がないため、これはサーバー上の作業をする必要があります。

1. [10-2節](#section10-2) の 1. 〜 2. と同様に、Enjuを停止します。
1. `app/views/manifestations/_manifestation.html.erb`を編集します。
例えば、件名などを追加表示したい場合は以下のようなコード片を挿入します:
    ```ruby
    <%- manifestation.subjects.each do |subject| -%>
      <%= link_to "#{subject.subject_heading_type.display_name.localize}: #{subject.term}", manifestations_path(query: "subject_sm:\"#{subject.term}\"") -%>
    <%- end -%>
    ```

1. [10-2節](#section10-2) の 4. と同様に、Enjuを起動します。


10-6 トップ画面やヘルプなどに表示する画像を置く {#section10-6}
--------------------------------------------------------------

1. 置きたい画像を用意します。（ここでは例として logo.png とします）
1. インストールしてあるEnju の app/assets/images/ 以下に画像ファイルを置きます。※ custom フォルダを作成し、その下にファイルを置くことを推奨します。

<div class="alert alert-info memo" markdown="1">

【Memo】

* フォルダを作成しその下にファイルを置くことも可能です。
* ファイル名やフォルダ名は任意に作成できます（ただし、Enjuが使用するものと衝突する場合は動作保証しかねます）。
* customフォルダ以下のファイルはEnjuが用意した画像と衝突しないことが保証されます。

</div>

1. 以下のコマンドを実行します。

        $ bundle exec rake assets:precompile

1. 参照するURLについて

以下のようなURLになりますのでこのURLを使って参照することができます。

* app/assets/images/ 以下に、 custom フォルダを作成して、その下に logo.png を置いた場合
    * URL例（デモサーバー）: https://enju.next-l.jp/assets/custom/logo.png
    * URL例（コンテナ）: http://localhost:8080/assets/custom/logo.png

※ 画像ファイルをブラウザから置けるようにする機能を開発予定です（[詳細 #1133](https://github.com/next-l/enju_leaf/issues/1113)）。
<!-- 関連 #1144 -->
 
10-7 ヘッダーをカスタマイズする {#section10-7}
-----------------------------------------------------------------------

ヘッダーをカスタマイズする方法を説明します。
現在は、ヘッダーに表示されるタイトルしか変更できないため、
たとえば、バナー画像を使いたい場合などは、
サーバー上の作業をする必要があります。

1. [10-2節](#section10-2) の 1. 〜 2. と同様に、Enjuを停止します。
1. バナー画像があれば、画像ファイルをEnju に置きます。

* 画像ファイルを置く方法は、[「10-5　トップ画面やヘルプなどに表示する画像を置く」](#section10-5)を参照してください。
* 説明で使う例として：置いたファイル：custom/logo.png 
* バナー画像の大きさは 横：640ピクセル 縦：65ピクセル　にするとちょうどよいです。大きすぎるとはみ出て表示されます。

1. `app/views/page/_header.html.erb`を編集します。
例えば、バナー画像をタイトルの代わりにつけたい場合は、以下の記述を変更します。

        <h1><%= link_to image_tag('custom/logo.png'), root_path %></h1>

{::comment}

修正前：

        <div id="library_system_name">
          <h1 class="resource_title"><%= link_to LibraryGroup.system_name(@locale), root_path, title: LibraryGroup.system_name(@locale) %></h1>
        </div>

修正後：

        <div id="library_system_name">
          <h1 class="resource_title"><%= link_to LibraryGroup.system_name(@locale), root_path, title: LibraryGroup.system_name(@locale) %></h1>
        </div>

{:/comment}

1. [10-2節](#section10-2) の 4. と同様です。

10-8 Sitemapsを設定する {#section10-8}
-----------------------------------------------------------------------

以下のコマンドでサイトマップを作成・更新します。ファイルは`public/sitemap.xml.gz`に作成されます。定期的にサイトマップを更新する場合、以下のコマンドをcronなどに登録してください。

```sh
docker compose run --rm web rake sitemap:create
```

サイトマップは以下のようなURLでアクセスできます。

https://enju.example.jp/sitemap.xml.gz

{% include enju_install_vm/toc_1.4.md %}
