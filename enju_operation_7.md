---
layout: page
title: 第7章 休館日と催し物を登録する - Next-L Enju 運用マニュアル
title_short: 第7章 休館日と催し物を登録する
group: enju_operation
---

* Contents
{:toc}

第7章 休館日と催し物を登録する {#section7}
==========================================

Enjuでは、休館日の登録に関して、次のような機能があります。

* 休館日を登録する
  図書館の休館日を登録します。

催し物（お知らせ）の登録には、次のような機能があります。

* 催し物（お知らせ）を登録する
* カレンダーを表示する
* 休館日や催し物を表示する

{::comment}7-1  enju_operation/holiday.md {:/comment}
{::comment}7-2  enju_operation/event.md {:/comment}
{::comment}7-3  enju_operation/calendar.md {:/comment}

7-1 休館日を登録する {#section7-1}
----------------------------------

Enjuでは、図書館の休館日を登録することができます。

#### 1. ［開館日と催し物］メニューから［全ての催し物］を選択します。  

![全ての催し物](assets/images/image_operation_event.png)
   
<div class="alert alert-info memo" markdown="1">【Memo】他の行き方：［図書館の管理］メニューから［システムの設定］を選択し、[開館日と催し物]のリンクをクリックでも可。
</div>
   
#### 2. 右メニューの［開催日と催し物の新規作成］をクリックします。  

![開催日と催し物の新規作成](assets/images/image_operation_event_new.png)

#### 3. 催し物の種別で「休館日」を選択し、開始時刻で休館日の年・月・日を選択、名前に「休館日」と入力し、［終日］にチェックを入れて［登録する］ボタンをクリックします。  

![開催日と催し物の新規作成](assets/images/image_operation_event_edit.png)

#### 4. 「開館日と催し物は正常に作成されました。」のメッセージが表示され、休館日が登録されます。  

![休館日登録](assets/images/image_operation_event_new_success.png)

<div class="alert alert-info memo">【Memo】休館日を登録しておくことにより、資料を貸し出す際の返却日を1日ずらすよう設定できます。設定方法は初期設定マニュアル「<a href="enju_setup_3.html#section3-6">3-6 利用者グループと貸出区分の関係を設定する</a>」をご覧ください。
</div>

7-2 催し物を登録する {#section7-2}
----------------------------------

Enjuでは、図書館で行われるさまざまな催し物を登録し、カレンダーに表示できます。

### 7-2-1 手動で催し物を登録する {#section7-2-1}

#### 1. ［開館日と催し物］メニューから［全ての催し物］を選択します。  

![全ての催し物](assets/images/image_operation_event.png)

<div class="alert alert-info memo" markdown="1">【Memo】他の行き方：［図書館の管理］メニューから［システムの設定］を選択し、[開館日と催し物]のリンクをクリックでも可。
</div>

#### 2. 右メニューの［開催日と催し物の新規作成］をクリックします。  

![開催日と催し物の新規作成](assets/images/image_operation_event_new.png)

#### 3. 催し物の種別で「不明」を選択し、名前や開始時刻、終了時刻などを設定して、［登録する］ボタンをクリックします。  

![開催日と催し物の新規作成](assets/images/image_operation_event_other_new.png)

<div class="alert alert-info memo">【Memo】催し物の種別を追加する方法は初期設定マニュアル「<a href="enju_setup_3.html#section3-8">3-8 催し物の種類を設定する</a>」をご覧ください。
</div>

#### 4. 「開館日と催し物は正常に作成されました。」のメッセージが表示され、催し物が登録されます。  

![催し物登録](assets/images/image_operation_event_other_new_success.png)

### 7-2-2 催し物のデータをインポートする {#section7-2-2}

既存のデータファイルを指定して読み込む「インポート」を行うと，一度に複数のデータを登録することができます。インポートするには，あらかじめデータファイルをTSV形式で作成しておきます(参照：[「TSV形式のデータファイルの作り方」](#section7_import_tsv))。


#### 1. ［開館日と催し物］メニューから［インポート］を選択します。  

![インポート](assets/images/image_operation_220.png)

#### 2. ［ファイルを選択］ボタンをクリックしてインポートしたいファイルを選択します。  

![催し物ファイルのの選択](assets/images/image_operation_222_1.png)

#### 3. [編集モード]、[文字コード]、[既定の催し物の種別]、[既定の図書館]を選択して［インポートを開始］ボタンをクリックします。

![催し物ファイルのインポートを作成](assets/images/image_operation_222_2.png)

<div class="alert alert-info memo">【Memo】［編集］モードで［更新］を選択すると、TSVファイルで催し物情報をまとめて更新できます。TSVファイルに必要なのは、更新したい催し物のID（id）と、更新したいフィールドの内容になります。また、［削除］を選択すると、TSVファイルで催し物情報をまとめて削除できます。この場合は、TSVファイルに必要なのは、削除したい催し物のID（<code>id</code>）のみです。
</div>

<div class="alert alert-info memo">【Memo】[文字コード]は基本的には自動判別でよいですが、うまくいかない場合は、文字コードを指定するようにしてください。
</div>

<div class="alert alert-info memo">【Memo】[既定の図書館]は、TSVファイルに[図書館]（library列）の値がない場合やTSVファイルで当該値に無効な値を指定していた場合に登録される値となります。TSVファイルに有効な値が指定されていた場合はTSVファイルを優先します。プルダウンメニューのデフォルト値は、現在ログイン中のユーザの図書館です。 
</div>


#### 4. 「催し物のインポート用ファイルは正常に作成されました。」のメッセージが表示され、催し物のデータがインポート準備が整います。右の[催し物のインポート用ファイルの一覧] をクリックします。  

![催し物ファイルのインポート](assets/images/image_operation_223.png)

#### 5. 今までのインポート結果の一覧が表示されます。[状態]を見ると処理結果がわかります。インポートが完了したものは[完了]と表示されます。[処理待ち]のものは現在、実行中です。インポート完了時にはEnjuのメッセージ機能にてお知らせします（「インポートが完了しました」いうメッセージが送られてきます）。注）Next-L Enju Leaf 1.1.0.rc12以前のバージョンの場合は毎時0分にインポート処理が開始します。 

![催し物ファイルのインポート一覧](assets/images/image_operation_223_2.png)

<div class="alert alert-info memo">【Memo】この画面は[図書館の管理]メニュー→[インポート]→[開催日と催し物]とすればいつでも閲覧できます。
</div>

<div class="alert alert-success memo" markdown="1">

### 【Column】TSV形式のデータファイルの作り方 {#section7_import_tsv}
  <p>TSV形式のデータファイル（TSVファイル）とは、項目をタブで区切ったテキストファイルです。Enjuで利用するTSVファイルでは、1行目にそれぞれの項目に関わるフィールド名を指定します。フィールド名および値は原則として &ldquo; &ldquo; で囲みます。
フィールド名とその意味については次の通りです。</p>

  <table class="table table-bordered table-condensed table-striped">
    <caption>開館日や催し物などの情報に関わる項目</caption>
    <thead>
      <tr>
        <th>必須/任意</th>
        <th>フィールド名</th>
        <th>データ形式</th>
        <th>内容</th>
        <th>未入力の場合（確認中）</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>任意</td>
        <td>id</td>
        <td>int</td>
        <td>ID(新規作成のときは無視される、更新・削除では必須)</td>
        <td>自動設定</td>
      </tr>
      <tr>
        <td>必須</td>
        <td>name</td>
        <td>utf8</td>
        <td>名前（イベントの名称）</td>
        <td>インポートが「失敗」になる</td>
      </tr>
      <tr>
        <td>任意</td>
        <td>display_name</td>
        <td>utf8</td>
        <td>イベントの表示名</td>
        <td>nameに入力したものが使用される</td>
      </tr>
      <tr>
        <td>任意</td>
        <td>event_category</td>
        <td>code</td>
        <td>催し物の種別。「催し物の種別」の[名前]を値とします(例：休館日であれば"closed"など）。見方については、<a href="enju_setup_3.html#section3-8">設定マニュアル 3-8 催し物の種別を設定する</a> を参照してください。</td>
        <td>インポート時に「既定の催し物の種別」として指定した種別</td>
      </tr>
      <tr>
        <td>任意</td>
        <td>library</td>
        <td>code</td>
        <td>図書館。「図書館の一覧」の[名前]を値とします(例："yours"など）。見方については、<a href="enju_setup_3.html#section3-2">設定マニュアル 3-2 個々の図書館を設定する</a>を参照してください。</td>
        <td>インポート時に「既定の図書館」として指定した図書館</td>
      </tr>
      <tr>
        <td>必須</td>
        <td>start_at</td>
        <td>ISO8601</td>
        <td>開始時刻（例：2014-06-24 15:00:00 +0900 もしくは 2014-06-24）、all_dayがTRUEの場合は時刻が無視される。</td>
        <td>インポートが「失敗」になる</td>
      </tr>
      <tr>
         <td>必須</td>
         <td>end_at</td>
         <td>ISO8601</td>
         <td>終了時刻（例：2014-06-24 15:00:00 +0900 もしくは 2014-06-24）、all_dayがTRUEの場合時刻は無視される。</td>
         <td>インポートが「失敗」になる</td></tr>
      <tr>
         <td>任意</td>
         <td>all_day</td>
         <td>真偽</td>
         <td>終日かどうか。TRUE or FALSE</td>
         <td>FALSE</td>
      </tr>
      <tr>
         <td>任意</td>
         <td>note</td>
         <td>utf8</td>
         <td>注記</td>
         <td>未設定</td>
      </tr>
      <tr>
         <td>任意</td>
         <td>dummy</td>
         <td>utf8</td>
         <td>ダミー行（なにかを書いていると無視する行）</td>
         <td>(読み込む行だと判定される）</td>
      </tr>
    </tbody>
  </table>
  
  <table class="table table-bordered table-condensed table-striped">
    <caption>＊設定例</caption>
    <tbody>
      <tr>
        <td>"name"      </td>
        <td>"event_category"</td>
        <td>"library"</td>
        <td>"start_at"</td>
        <td>"end_at"</td>
        <td>"all_day"</td>
        <td>"note"</td>
        <td>"dummy"</td></tr>
      <tr>
        <td>"名前（イベントの名称）"</td>
        <td>"催し物の種別"</td> 
        <td>"図書館"</td>
        <td>"開始時刻"</td>
        <td>"終了時刻"</td>
        <td>"終日"</td>
        <td>"注記"</td>
        <td>この行はダミー行</td></tr>
      <tr>
        <td>必須</td>
        <td>任意</td>
        <td>任意</td>
        <td>必須</td>
        <td>必須</td>
        <td>任意</td>
        <td>任意</td>
        <td>任意</td></tr>
      <tr>
        <td>"おはなし会"  </td>
        <td>"story_telling"     </td>
        <td>"kiri"</td>
        <td>"2009-04-05 15:00:00 +0900"</td>
        <td>"2009-04-05 16:00:00 +0900"</td>
        <td>FALSE</td>
        <td>短めのお話会です</td>
        <td>　</td></tr>
      <tr>
        <td>"蔵書点検"  </td>
        <td></td>
        <td>"tachibana"</td>
        <td>"2009-04-01"</td>
        <td>"2009-04-02"</td>
        <td>  </td>
        <td>  </td>
        <td>　</td></tr>
      <tr>
        <td>"休館日"    </td>
        <td>"closed"         </td>
        <td>"tachibana"</td>
        <td>"2011-04-01"</td>
        <td>"2011-04-03"</td>
        <td>  </td>
        <td>蔵書点検のため長めです</td>
        <td>　</td></tr>
    </tbody>
  </table>

</div>

7-3 カレンダーを利用する {#section7-3}
--------------------------------------

開館日や催し物などの情報を、カレンダーとして表示することができます。

#### 1. ［開館日と催し物］メニューから［カレンダー］を選択します。  

![カレンダー](assets/images/image_operation_224.png)

#### 2. カレンダーが表示されます。  

![カレンダー表示](assets/images/image_operation_225.png)
   
<div class="alert alert-info memo" markdown="1">

【Memo】

* 各催し物をクリックするとその催し物の詳細が表示されます。
* [今日]をクリックすると今日のカレンダーに移動します。
* [＜]をクリックすると前の月に移動します。
* [＞]をクリックすると次の月に移動します。
* 右メニューの[一覧表示]をクリックすると休館日や催し物を一覧表示します。
* その他の右メニューについては、[7-4  休館日や催し物を表示する](#section7-4)と同様です。

</div>

7-4 休館日や催し物を表示する {#section7-4}
-------------------------------------------

図書館の休館日や催し物を表示することができます。

#### 1. ［開館日と催し物］メニューから［全ての催し物］を選択します。  

![全ての催し物](assets/images/image_operation_event.png)
   
<div class="alert alert-info memo" markdown="1">【Memo】他の行き方：［図書館の管理］メニューから［システムの設定］を選択し、[開館日と催し物]のリンクをクリックでも可。
</div>
   
#### 2. 詳細をみたい休館日や催し物の名前のリンクをクリックします。  

![開催日と催し物の名前のリンク](assets/images/image_operation_event_browse.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* この画面では、すでに登録済みの休館日や催し物が一覧されています。
* [編集]リンクをクリックすると、登録済みの休館日や催し物を修正できます。
* [削除]リンクをクリックすると、登録済みの休館日や催し物を削除できます。
* 検索語にキーワードを入れて、検索ボタンをクリックするとヒットした休館日や催し物のみを表示します。
* [今後の催し物]をクリックすると、今後の休館日や催し物のみを表示します。
* [過去の催し物]をクリックすると、過去のの休館日や催し物のみを表示します。
* 図書館のリンクをたどるとその図書館の情報ページを表示します。
* 名前のリンクをたどるとその休館日や催し物の詳細を表示します。
* 右メニューの[カレンダー表示]をクリックすると登録済みの休館日や催し物をカレンダー形式で表示します。
* 右メニューの[催し物のインポート]をクリックすると催し物のインポートファイルの一覧の画面に遷移します（参照：[「7-2-2 催し物のデータをインポートする」](#section7-2-2)の5.の画面）
* 右メニューの図書館名のリンクをクリックするとその図書館の休館日や催し物のみを表示します。
* 右メニューの[RSS]リンクをクリックするとRSS形式で登録済みの休館日や催し物を表示します(参照：[コラム 休館日や催し物のRSS](#section7_rss))。
* 右メニューの[TSV]リンクをクリックするとTSV形式で登録済みの休館日や催し物を表示します(参照：[コラム 休館日や催し物のTSV](#section7_tsv))。
* 右メニューの[iCalendar]リンクをクリックするとiCalendar形式で登録済みの休館日や催し物をダウンロードできます(参照：[コラム 休館日や催し物のiCalendar](#section7_icalendar))。他のカレンダーソフトやカレンダーサービスに登録済みの休館日や催し物を読み込むことができます。
</div>

#### 3. 休館日や催し物の詳細が表示されます。

![開催日と催し物の詳細](assets/images/image_operation_event_browse_2.png)

<div class="alert alert-info memo" markdown="1">

【Memo】

* 右メニューの[編集]リンクをクリックすると、登録済みの休館日や催し物を修正できます。
* （1.1.2バージョン以降のみ）右メニューの[削除]リンクをクリックすると、登録済みの休館日や催し物を削除できます。
* 右メニューの[開催日と催し物の一覧]リンクをクリックすると、登録済みの休館日や催し物の一覧を表示します。

</div>

<div class="alert alert-info memo" markdown="1">

【Column】 休館日や催し物のRSS {#section7_rss}
---------------------------------------------

![開催日と催し物の詳細](assets/images/image_operation_event_browse_rss.png)

</div>

<div class="alert alert-info memo" markdown="1">

【Column】 休館日や催し物のTSV {#section7_tsv}
----------------------------------------------

<pre>
library	name	note	start_at	end_at
"Your Library"	"休館日"	""	"2015-12-07 00:00:00 +0900"	"2015-12-07 23:59:59 +0900
"Your Library"	"休館日"	""	"2015-11-05 00:00:00 +0900"	"2015-11-05 23:59:59 +0900
</pre>

</div>

<div class="alert alert-info memo" markdown="1">

【Column】 休館日や催し物のiCalendar {#section7_icalendar}
----------------------------------------------------------

<pre>
BEGIN:VCALENDAR
PRODID;X-RICAL-TZSOURCE=TZINFO:-//com.denhaven2/NONSGML ri_cal gem//EN
CALSCALE:GREGORIAN
VERSION:2.0
BEGIN:VTIMEZONE
TZID;X-RICAL-TZSOURCE=TZINFO:Asia/Tokyo
BEGIN:STANDARD
DTSTART:19510908T020000
RDATE:19510908T020000
TZOFFSETFROM:+1000
TZOFFSETTO:+0900
TZNAME:JST
END:STANDARD
END:VTIMEZONE
BEGIN:VEVENT
DTEND;TZID=Asia/Tokyo;VALUE=DATE-TIME:20151207T235959
DTSTART;TZID=Asia/Tokyo;VALUE=DATE-TIME:20151207T000000
DESCRIPTION:休館日
LOCATION:IbarakiTsukuba
END:VEVENT
BEGIN:VEVENT
DTEND;TZID=Asia/Tokyo;VALUE=DATE-TIME:20151105T235959
DTSTART;TZID=Asia/Tokyo;VALUE=DATE-TIME:20151105T000000
DESCRIPTION:休館日
LOCATION:IbarakiTsukuba
END:VEVENT
END:VCALENDAR
</pre>

</div>

{% include enju_operation/toc.md %}
