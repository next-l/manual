---
layout: page
title: 第5章 資料の貸出状況を確認する/貸出延長をする - Next-L Enju 利用者マニュアル
title_short: 第5章 資料の貸出状況を確認する/貸出延長をする
group: enju_user
version: 1.4
---

* Contents
{:toc}

第5章 資料の貸出状況を確認する/貸出延長をする {#section5}
=================================

この章では、以下の貸出に関係する機能について説明します。

* 資料の貸出状況を確認する
* 貸出延長をする



5-1 資料の貸出状況を確認する {#section5-1}
----------------------------------------

現在借りている本を確認することができます。
また、[貸出の履歴を保存する（3-2節参照）](enju_user_3.html#section3-2)にチェックを入れておくと、返却した本も記録され、閲覧できるようになります。
ただし、チェックを入れるまえに返却した本は記録されていないので表示できません。

#### 1. ［貸出と予約］メニューから［貸出履歴］を選択します。

![貸出履歴](../assets/images/1.1/image_user_checkouts.png)

#### 2. 貸出履歴が表示されます。右メニューの「予約あり」の下の「あり」をクリックします。

![貸出履歴](../assets/images/1.1/image_user_checkouts_003.png)

<div class="alert alert-info memo" markdown="1">
【Memo】

* この表と同内容を、[アカウント]リンクをたどった先の画面でも見れます。
* 右メニューにある「図書 : 2/ 10」は、「借りている本の数 / 借りられる上限数」を表しています。
* 右メニューの[予約]リンクをたどると、予約の一覧画面へ遷移します。

</div>

#### 3. 予約がかかっている資料だけが表示されます。右メニューの[この絞り込みを解除する]をクリックします。

![絞り込みを解除する](../assets/images/1.1/image_user_checkouts_005.png)

#### 4. 絞り込みが解除され、すべての貸出履歴が表示されます。

![貸出履歴](../assets/images/1.1/image_user_checkouts_007.png)


5-2 貸出延長をする {#section5-2}
--------------------------------

#### 1. ［貸出と予約］メニューから［貸出履歴］を選択します。

![貸出履歴](../assets/images/1.1/image_user_checkouts.png)

#### 2. 貸出履歴が表示されます。[貸出期間の延長]をクリックします。

![貸出期間の延長リンク](../assets/images/1.1/image_user_checkouts_009.png)

#### 3. 新しい貸出期間を確認し、[更新する]をクリックします。

![貸出期間の延長](../assets/images/1.1/image_user_checkouts_011.png)

<div class="alert alert-info memo" markdown="1">
【Memo】

* すでに貸出期間が過ぎている資料の場合
* 予約が入っている資料の場合

は、次のような画面が出て、貸出期間の延長ができません。

![貸出期間の延長が不可](../assets/images/1.1/image_user_checkouts_013.png)

</div>


5-3 返却済みの貸出の記録を削除する {#section5-3}
--------------------------------

#### 1. ［貸出と予約］メニューから［貸出履歴］を選択します。

![貸出履歴](../assets/images/1.1/image_user_checkouts.png)

#### 2. ［削除]リンクをクリックします。

![貸出履歴の削除リンク](../assets/images/1.1/image_user_checkouts_015.png)

#### 3. ［OK]をクリックします。

![貸出履歴の削除のOK](../assets/images/1.2/image_alert.png)

#### 2. 返却済みの記録が削除されました。

![貸出履歴の削除](../assets/images/1.1/image_user_checkouts_017.png)

5-4 貸出の一覧のTSVを表示する {#section5-4}
--------------------------------

#### 1. ［貸出と予約］メニューから［貸出履歴］を選択します。

![貸出履歴](../assets/images/1.1/image_user_checkouts.png)

#### 2. 右メニューの［TSV］をクリックします。

![貸出履歴のTSVリンク](../assets/images/1.1/image_user_checkouts_019.png)

#### 3. TSVが表示されます。

<pre>
username	user_number	item_identifier	title	checked_out_at	due_date	checked_in_at	(created_at: 2020-01-11 15:07:50 +0900)
"zuser01"	"z123"	"011645041"	"イェルサレムのアイヒマン : 悪の陳腐さについての報告"	"2020-01-11 15:06:24 +0900"	"2020-02-10 23:59:59 +0900"	
"zuser01"	"z123"	"110333796"	"基本件名標目表"	"2020-01-11 14:55:44 +0900"	"2020-02-10 23:59:59 +0900"	"2020-01-11 14:55:51 +0900"
</pre>

5-5 貸出の一覧のRSSを表示する {#section5-5}
--------------------------------

#### 1. ［貸出と予約］メニューから［貸出履歴］を選択します。

![貸出履歴](../assets/images/1.1/image_user_checkouts.png)

#### 2. 右メニューの［RSS］をクリックします。

![貸出履歴のRSSリンク](../assets/images/1.1/image_user_checkouts_023.png)

#### 3. RSSが表示されます。

![貸出履歴のRSS表示](../assets/images/1.1/image_user_checkouts_025.png)

{% include enju_user/toc.md %}
