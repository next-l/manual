---
layout: page
title: 第6章 資料に関するシステム設定を行う - Next-L Enju初期設定マニュアル
title_short: 第6章 資料に関するシステム設定を行う
group: enju_setup
version: 1.2
---

* Contents
{:toc}

第6章 資料に関するシステム設定を行う
================

{::comment}6-1 enju_setup/identifier_type.md{:/comment}

6-1 識別子の種類を設定する {#section6-1}
----------------------------------------

[資料を手動で登録する](enju_operation_4.html#section4-2-7)ときや、[資料の書誌情報を変更する](enju_operation_4.html#section4-2-8)ときに入力する「識別子」の種類（例：isbn，doiなど）を登録できます。（注：Enju Leaf 1.1.0では、ここで新たに登録した「識別子の種類」を使った[書誌のTSVインポート](enju_operation_4.html#section4-2-10)には対応していません）

### 6-1-1 設定項目 {#section6-1-1}

* 名称：識別子の種類の名称を入力します。
* 表示名：画面に表示する名称を入力します。
* 注記：注意事項や特記事項などを入力します。

### 6-1-2 設定方法 {#section6-1-2}

#### 1. ［図書館の管理］メニューから［システムの設定］を選択します。  

![システムの設定](../assets/images/1.1/image_system_setup.png)

#### 2. ［識別子の種類］をクリックします。  

![識別子の種類の設定](../assets/images/1.1/image_initial_079.png)

#### 3. 右メニューの［識別子の種類の新規作成］をクリックします。  

![識別子の種類の新規作成](../assets/images/1.1/image_initial_081.png)  

<div class="alert alert-info memo">
【Memo】入力済みの設定内容を変更する場合は［編集］を，削除する場合は［削除］をクリックします。ただし、関連する書誌レコードがあるものについては[削除]リンクは表示されず、削除できません。  
一覧の表示順序を変更するには，表の1列目に表示されている↑または↓をクリックして行を入れ替えます。
</div>

#### 4. 設定項目に必要事項を入力し、［登録する］ボタンをクリックして，設定内容を登録します。  

![識別子の種類の作成](../assets/images/1.1/image_initial_083.png)  

{% include enju_setup/toc.md %}
