---
layout: page
title: 第5章 モジュールの追加 - Next-L Enju インストールマニュアル（VirtualBox編）
title_short: 第5章 モジュールの追加
group: enju_install_vm
version: 1.3
---

* Contents
{:toc}
{::comment}module.md{:/comment}

第5章 モジュールの追加 {#section5}
==================================

発注リストの作成機能や、Web資料の登録機能などは、Enjuの標準ではインストールされていません。それぞれモジュールをインストールすることでこれらの機能を追加することができます。必要なければインストールしなくても問題ありません。

この章では、追加できる機能、モジュールのインストール方法について説明します。

5-1 [enju_nii]モジュール（CiNii Booksからの書誌データインポート機能） {#section5-1}
-----------------------------------------------------------------------------------

#### 1. [「8-1 Enjuの停止」](enju_install_vm_8.html#section8-1)を実行します。

#### 2. enju/Gemfile に以下の一行を追加して保存します

	gem "enju_nii", '~> 0.2.0.beta.1'

<div class="alert alert-info memo" markdown="1">
【Memo】
'0.2.0.beta.1'の部分は変更になることがあります。最新の情報は、 以下のコマンドで、出力されますので、適宜こちらを参照して読み替えてください。

	$ gem search -r enju_nii # 正式版
	$ gem search -r enju_nii --pre # ベータ版

</div>

#### 3. [「8-2 最新ソースコードの取込み」](enju_install_vm_8.html#section8-2)を実行します。

#### 4. [「8-3 Enjuを再起動」](enju_install_vm_8.html#section8-3)を実行します。

5-2 [enju_loc]モジュール（アメリカ議会図書館からの書誌データインポート機能） {#section5-2}
------------------------------------------------------------------------------------------

※ http://lx2.loc.gov:210/LCDB から書誌データをインポートしています。210ポートという普通、httpでは使わないポートを使用していますので、210ポートがファイアーウォールでとめられている場合は使用できません。

#### 1. [「8-1 Enjuの停止」](enju_install_vm_8.html#section8-1)を実行します。

#### 2. enju/Gemfile に以下の一行を追加して保存します

	gem "enju_loc", '~> 0.2.0.beta.1'

<div class="alert alert-info memo" markdown="1">
【Memo】
'0.2.0.beta.1'の部分は変更になることがあります。最新の情報は、 以下のコマンドで、出力されますので、適宜こちらを参照して読み替えてください。

	$ gem search -r enju_loc # 正式版
	$ gem search -r enju_loc --pre # ベータ版

</div>

#### 3. [「8-2 最新ソースコードの取込み」](enju_install_vm_8.html#section8-2)を実行します。

#### 4. [「8-3 Enjuを再起動」](enju_install_vm_8.html#section8-3)を実行します。

5-3 [enju_oai]モジュール（OAI-PMH対応） {#section5-3}
-----------------------------------------------------

#### 1. [「8-1 Enjuの停止」](enju_install_vm_8.html#section8-1)を実行します。

#### 2. enju/Gemfile に以下の一行を追加して保存します

	gem "enju_oai", '~> 0.2.0.beta.1'

<div class="alert alert-info memo" markdown="1">
【Memo】
'0.2.0.beta.1'の部分は変更になることがあります。最新の情報は、 以下のコマンドで、出力されますので、適宜こちらを参照して読み替えてください。

	$ gem search -r enju_oai # 正式版
	$ gem search -r enju_oai --pre # ベータ版

</div>

#### 3. app/models/user.rb の末尾に以下の1行を挿入します。

	Manifestation.include(EnjuOai::OaiModel)

#### 4. [「8-2 最新ソースコードの取込み」](enju_install_vm_8.html#section8-2)を実行します。

#### 5. [「8-3 Enjuを再起動」](enju_install_vm_8.html#section8-3)を実行します。

5-4 [enju_purchase_request]モジュール（発注リスト作成機能） {#section5-4}
-------------------------------------------------------------------------

#### 1. [「8-1 Enjuの停止」](enju_install_vm_8.html#section8-1)を実行します。

#### 2. enju/Gemfile に以下の一行を追加して保存します

	gem "enju_purchase_request", '~> 0.2.0.beta.1'

<div class="alert alert-info memo" markdown="1">
【Memo】
'0.2.0.beta.1'の部分は変更になることがあります。最新の情報は、 以下のコマンドで、出力されますので、適宜こちらを参照して読み替えてください。

	$ gem search -r enju_purchase_request # 正式版
	$ gem search -r enju_purchase_request --pre # ベータ版

</div>

#### 3. [「8-2 最新ソースコードの取込み」](enju_install_vm_8.html#section8-2)を実行します。

#### 4. 以下のコマンドを実行します。

	$ cd enju
	$ bundle exec rake enju_purchase_request_engine:install:migrations  
	$ bundle exec rake db:migrate RAILS_ENV=production # 必要に応じてRAILS_ENVを指定

#### 5. app/controllers/application_controller.rbを以下のように編集します。

	class ApplicationController < ActionController::Base
	# 中略
	  include EnjuLeaf::Controller
	  ...
	  include EnjuPurchaseRequest::Controller # この行を追加
	end

#### 6. app/models/user.rb を以下のように編集します。

	class User < ActiveRecord::Base
	# 中略
	  include EnjuPurchaseRequest::EnjuUser # この行を追加
	end

#### 7. [「8-3 Enjuを再起動」](enju_install_vm_8.html#section8-3)を実行します。

5-5 [enju_bookmark]モジュール（ブックマーク機能） {#section5-5}
---------------------------------------------------------------

<div class="alert alert-info memo" markdown="1">
【Memo】このモジュールは現在、開発中です。
</div>

#### 1. [「8-1 Enjuの停止」](enju_install_vm_8.html#section8-1)を実行します。

#### 2. enju/Gemfile に以下の一行を追加して保存します

	gem "enju_bookmark", '~> 0.2.0.beta.1'

<div class="alert alert-info memo" markdown="1">
【Memo】
'0.2.0.beta.1'の部分は変更になることがあります。
最新の情報は、 以下のコマンドで、出力されますので、適宜こちらを参照して読み替え
てください。

	$ gem search -r enju_bookmark # 正式版
	$ gem search -r enju_bookmark --pre # ベータ版

</div>

#### 3. [「8-2 最新ソースコードの取込み」](enju_install_vm_8.html#section8-2)を実行します。

#### 4. 以下のコマンドを実行します。

	$ cd enju
	$ bundle exec rake enju_bookmark_engine:install:migrations  
	$ bundle exec rake db:migrate RAILS_ENV=production # 必要に応じてRAILS_ENVを指定

#### 5. app/helpers/application_helper.rbを以下のように編集します。

	module ApplicationHelper
	  # 中略
	  include EnjuBookmark::BookmarkHelper # この行を追加
	end

#### 6. app/models/user.rb を以下のように編集します。

	class User < ActiveRecord::Base
	  # 中略
	  include EnjuBookmark::EnjuUser # この行を追加
	end

#### 7. [「8-3 Enjuを再起動」](enju_install_vm_8.html#section8-3)を実行します。

5-6 [enju_search_log]モジュール（検索履歴機能） {#section5-6}
---------------------------------------------------------------

(現在、準備中）

<div class="alert alert-info memo" markdown="1">
【Memo】このモジュールは現在、開発中です。
</div>



（その他のモジュールについては、後日公開します。）

{% include enju_install_vm/toc.md %}

