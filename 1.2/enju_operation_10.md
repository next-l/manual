---
layout: page
title: 第10章 統計機能を利用する - Next-L Enju 運用マニュアル
title_short: 第10章 統計機能を利用する
group: enju_operation
version: 1.2
---

* Contents
{:toc}
{::comment}11-1,2,3  enju_operation/statistics.md {:/comment}

第10章 統計機能を利用する {#section10}
======================================

{::comment}

現在のEnjuでは、ブックマーク回数の統計を取ることができます

* ブックマーク回数統計

{:/comment}

現在のEnjuでは、利用者別と資料別に、貸出の統計を取ることができます

* 利用者別貸出統計
* 資料別貸出統計

現在のEnjuでは、利用者別と資料別で予約の統計を取ることができます

* 利用者別予約統計
* 資料別予約統計

{::comment}

10-x ブックマーク回数の統計を取る {#section10-x}
---------------------------------

Enjuでは、ブックマークの回数の統計を取ることができます。

#### 1. ［図書館の管理］メニューから［統計］を選択します。  

![統計](../assets/images/1.1/image_operation_statistics.png)

#### 2. ［ブックマーク回数］をクリックします。  

![ブックマーク回数](../assets/images/1.1/image_operation_257.png)

<div class="alert alert-info memo" markdown="1">
【Memo】もし、[ブックマーク回数]がない場合は、[enju_bookmark]モジュールを
インストール必要があります。
インストール方法については[インストールマニュアル「5-2 [enju_bookmark]モジュール（ブックマーク機能）」](enju_install_vm.html#section5-2)
の章を参照ください。
</div>

#### 3. 右メニューの［ブックマーク統計の新規作成］をクリックします。  

![ブックマーク統計の新規作成](../assets/images/1.1/image_operation_259.png)

#### 4. 統計期間を設定して［登録する］をクリックします。  

![ブックマーク統計を作成](../assets/images/1.1/image_operation_261.png)

#### 5. 「ブックマーク統計は正常に作成されました。」のメッセージが表示され、ブックマーク統計データが作成されます。右メニューの［CSV］をクリックし、統計データを保存します。  

![統計データを保存](../assets/images/1.1/image_operation_263.png)

{:/comment}

10-1 貸出の統計を取る {#section10-1}
------------------------------------

Enjuでは、利用者別と資料別で貸出の統計を取ることができます。

### 10-1-1 利用者別貸出統計を取る {#section10-1-1}

※この機能は1.1.1, 1.1.2では動作しません。1.1.2から動作します。

#### 1. ［図書館の管理］メニューから［統計］を選択します。  

![統計](../assets/images/1.1/image_operation_statistics.png)

#### 2. ［利用者の貸出回数］をクリックします。  

![利用者の貸出回数](../assets/images/1.1/image_operation_265_0.png)

#### 3. 右メニューの［利用者別貸出統計の新規作成］をクリックします。  

![利用者別貸出統計の新規作成](../assets/images/1.1/image_operation_265.png)

#### 4. 統計期間を設定して［集計を開始］をクリックします。  

![利用者別貸出統計を作成](../assets/images/1.1/image_operation_267.png)

#### 5. 「利用者別貸出統計のタスクは正常に作成されました。」のメッセージが表示され、利用者別貸出統計データ作成の準備が整いました（この段階ではまだ、統計データは実際には作成されていません）。右の[利用者別貸出統計の一覧]をクリックします。

![統計データ出力タスク作成完了](../assets/images/1.1/image_operation_269.png)

#### 6. 今までの利用者別貸出統計の一覧が表示されます。[状態]を見ると処理結果がわかります。 完了したものは[完了]と表示されます。結果を表示させたいレコードの[表示]リンクをクリックします。

![統計データの一覧](../assets/images/1.1/image_operation_269_2.png)

<div class="alert alert-info memo" markdown="1">【Memo】この画面は 3 の画面と同じです。[図書館の管理]メニューの[統計]をたどり、[利用者の貸出回数]リンクをクリックすればでいつでも行けます。
</div>

#### 7. 統計結果が表示されます。右メニューの［TSV］をクリックし、統計データを保存します。  

![統計データを保存](../assets/images/1.1/image_operation_269_3.png)

<div class="alert alert-info memo" markdown="1">

【Memo】TSVファイルの例

![TSV 統計データを保存](../assets/images/1.1/image_operation_269_3_tsv.png)

</div>

### 10-1-2 資料別貸出統計を取る {#section10-12}

#### 1. ［図書館の管理］メニューから［統計］を選択します。  

![統計](../assets/images/1.1/image_operation_statistics.png)

#### 2. ［資料の貸出回数］をクリックします。  

![資料の貸出回数](../assets/images/1.1/image_operation_271_0.png)

#### 3. 右メニューの［資料別貸出統計の新規作成］をクリックします。  

![資料別貸出統計の新規作成](../assets/images/1.1/image_operation_271.png)

#### 4. 統計期間を設定して［集計を開始］をクリックします。  

![資料別貸出統計を作成](../assets/images/1.1/image_operation_272.png)

#### 5. 「資料別貸出統計は正常に作成されました。」のメッセージが表示され、統計結果が表示されます。[資料の形態別]の統計結果が表示されています。[貸出区分別]のタブをクリックします。

![統計データを保存](../assets/images/1.1/image_operation_272_2.png)

#### 6. [貸出区分別]の統計結果が表示されています。[書誌別]のタブをクリックします

![統計データを保存](../assets/images/1.1/image_operation_272_2_c.png)

#### 7 [書誌別]の統計結果が表示されています。右メニューの［TSV］をクリックし、統計データを保存します。

![統計データを保存](../assets/images/1.1/image_operation_272_2_c_2.png)

<div class="alert alert-info memo" markdown="1">

【Memo】TSVファイルの例

![TSV 統計データを保存](../assets/images/1.1/image_operation_272_2_tsv.png)

※どのタブを選択していても必ず[書誌別]のデータをTSVダウンロードすることになります。

</div>

10-2 予約の統計を取る {#section10-2}
------------------------------------

Enjuでは、利用者別と資料別に、予約の統計を取ることができます。

### 10-2-1 利用者別予約統計を取る {#section10-2-1}

※この機能は1.1.1, 1.1.2では動作しません。1.1.2から動作します。

#### 1. ［図書館の管理］メニューから［統計］を選択します。  

![統計](../assets/images/1.1/image_operation_statistics.png)

#### 2. ［利用者の予約回数］をクリックします。  

![利用者の予約回数](../assets/images/1.1/image_operation_274_0.png)

#### 3. 右メニューの［利用者別予約統計の新規作成］をクリックします。  

![利用者別予約統計の新規作成](../assets/images/1.1/image_operation_274.png)

#### 4. 統計期間を設定して［集計を開始］をクリックします。  

![利用者別予約統計を作成](../assets/images/1.1/image_operation_275.png)

#### 5. 「利用者別予約統計のタスクは正常に作成されました。」のメッセージが表示され、
利用者別予約統計データ作成の準備が整いました
（この段階ではまだ、統計データは実際には作成されていません）。
右の[利用者別予約統計の一覧]をクリックします。

![統計データ出力タスク作成完了](../assets/images/1.1/image_operation_277.png)

#### 6. 今までの利用者別予約統計の一覧が表示されます。
[状態]を見ると処理結果がわかります。
 完了したものは[完了]と表示されます。
結果を表示させたいレコードの[表示]リンクをクリックします。

![統計データの一覧](../assets/images/1.1/image_operation_277_2.png)

<div class="alert alert-info memo" markdown="1">
【Memo】この画面は 3 の画面と同じです。[図書館の管理]メニューの[統計]をたどり、
[利用者の予約回数]リンクをクリックすればでいつでも行けます。
</div>

#### 7. 統計結果が表示されます。右メニューの［TSV］をクリックし、統計データを保存します。

![統計データを保存](../assets/images/1.1/image_operation_277_3.png)

<div class="alert alert-info memo" markdown="1">

【Memo】TSVファイルの例

![TSV 統計データを保存](../assets/images/1.1/image_operation_277_3_tsv.png)

</div>

### 10-2-2 資料別予約統計を取る {#section10-2-2}

※この機能は1.1.1, 1.1.2では動作しません。1.1.2から動作します。

#### 1. ［図書館の管理］メニューから［統計］を選択します。  

![統計](../assets/images/1.1/image_operation_statistics.png)

#### 2. ［資料の予約回数］をクリックします。  

![資料の予約回数](../assets/images/1.1/image_operation_279_0.png)

#### 3. 右メニューの［資料別予約統計の新規作成］をクリックします。  

![資料別予約統計の新規作成](../assets/images/1.1/image_operation_279.png)

#### 4. 統計期間を設定して［集計を開始］をクリックします。  

![資料別予約統計を作成](../assets/images/1.1/image_operation_280.png)

#### 5. 「資料別予約統計のタスクは正常に作成されました。」のメッセージが表示され、
資料別予約統計データ作成の準備が整いました
（この段階ではまだ、統計データは実際には作成されていません）。
右の[資料別予約統計の一覧]をクリックします。

![統計データ出力タスク作成完了](../assets/images/1.1/image_operation_280_2.png)

#### 6. 今までの資料別予約統計の一覧が表示されます。
[状態]を見ると処理結果がわかります。
 完了したものは[完了]と表示されます。
結果を表示させたいレコードの[表示]リンクをクリックします。

![統計データの一覧](../assets/images/1.1/image_operation_280_3.png)

<div class="alert alert-info memo" markdown="1">
【Memo】この画面は 3 の画面と同じです。[図書館の管理]メニューの[統計]をたどり、
[資料の予約回数]リンクをクリックすればでいつでも行けます。
</div>

#### 7. 統計結果が表示されます。右メニューの［TSV］をクリックし、統計データを保存します。

![統計データを保存](../assets/images/1.1/image_operation_280_4.png) 

<div class="alert alert-info memo" markdown="1">

【Memo】TSVファイルの例

![TSV 統計データを保存](../assets/images/1.1/image_operation_280_4_tsv.png)

</div>

{% include enju_operation/toc.md %}
