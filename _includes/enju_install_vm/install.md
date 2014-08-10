{::comment} install.md {:/comment}
<a name="4" />

4章 Enjuのインストール(スタンドアロンで動作させる)
====================================================

<a name="4-1" />

4-1 Enju仮想マシンの入手
------------------------

Enjuのインストールに必要なパッケージは，すべてネットワーク上で提供されます。

<a name="4-1-1" />

### 4-1-1 Enjuパッケージの提供場所

Enjuは，以下のURLで最新版が提供されています。インストールする環境に合わせ，必要なパッケージをダウンロードします。

* [http://www.next-l.jp/?page=VM](http://www.next-l.jp/?page=VM)

![Enjuパッケージの提供場所](assets/images/image_install_016.png)

<a name="4-1-2" />

### 4-1-2 ファイル名

ダウンロードするファイルは，以下のファイル名です。

    enju_leaf_x.x.x_virtualbox.zip


<div class="alert alert-info">
【Memo】<code>x.x.x</code> にはバージョン番号が表示されます。複数のパッケージが存在する場合は，最新バージョンを利用してください。VirtualBox用を利用ください。
</div>


{::comment}

#### 32bit版のEnju仮想マシンを利用する場合

WindowsコンピュータにインストールしたVirtualBox上で32bit版のEnju仮想マシンをインストールする場合，「 32bit版Enju仮想マシン 」をダウンロードしてください。ダウンロードするファイルは，以下のファイル名です。

    enju_leaf_x.x.x_vmware_x86.zip

<div class="alert alert-info">
【Memo】<code>x.x.x</code> にはバージョン番号が表示されます。複数のパッケージが存在する場合は，最新バージョンを利用してください。
</div>

{:/comment}

<a name="4-1-3" />

### 4-1-3 パッケージの展開

ダウンロードしたパッケージを展開してインストールを行います。

1. Enjuをインストールするフォルダーを作成します。

   ![Enjuをインストールするフォルダーを作成](assets/images/image_install_017.png)
   
2. ダウンロードした zip ファイルパッケージを上記のフォルダにコピーして展開します。

   ![zip ファイルパッケージを展開](assets/images/image_install_018.png)
   
3. 展開したフォルダを開きます。  

   ![展開したフォルダを開く](assets/images/image_install_018_2.png)
   
4. Enju仮想マシンのファイル名を確認します。xxxx.vboxです(ここの例ではvagrant_default_1388636385395_61088.vbox)。xxxxの部分は変わります。  

   ![Enju仮想マシンのファイル名を確認](assets/images/image_install_018_3.png)

<a name="4-2" />

4-2 VirtualBoxを開く
-----------------------

VirtualBoxを起動し，Enju仮想マシンを開きます。

1. VirtualBoxを起動します。
2. ［仮想マシン］→［追加(A)］をクリックします。  

   ![［仮想マシン］→［追加(A)］をクリック](assets/images/image_install_026.png)
   
3. 前項で展開し確認した「xxxx.vbox」を選択し，「開く」をクリックします。  

   ![「xxxx.vbox」を選択し，「開く」をクリック](assets/images/image_install_027.png)

   <div class="alert alert-info">
   ファイル名xxxx.vboxはダウンロードしたファイルを展開したときに確認したファイル名になります。
   </div>

4. Enju仮想マシンが開きました。

   ![Enju仮想マシンが開く](assets/images/image_install_028.png)

{::comment}

6. ［enju_xxxx_xxxx］をクリックして，［ファイル］−［Playerの環境設定］を選択します。  

   ![](assets/images/image_install_028.png)
   
7. ［閉じるときの動作］を選択します。
   * Enju仮想マシンのウィンドウを閉じるときの動作を選択します。選択する項目は任意です。
8. ［仮想マシンを閉じるとき］を選択します。
   * Enju仮想マシンを閉じるときの動作を選択します。選択する項目は任意です。
9. ［ソフトウェアの更新］および［ユーザーエクスペリエンス改善プログラム］を設定します。
   * オン／オフは任意です。
10. ［OK］をクリックします。  

    ![](assets/images/image_install_029.png)

    <div class="alert alert-info">
    【Memo】任意の設定項目が不明な場合，以下のように設定します。
    * ［閉じるときの動作］:［仮想マシンを閉じる前に確認画面を表示］
    * ［仮想マシンを閉じるとき］: ［パワーオフ］
    * ［ソフトウェアの更新］: オン
    * ［ユーザーエクスペリエンス改善プログラム］: オン
    </div>
    
4-3 Enju仮想マシンの設定
------------------------

VMwareがEnju仮想マシンに割り当てるメモリ量などの動作環境を設定します。

1. ［Enju_Ubuntu_xxxx］をクリックして，［仮想マシン］−［仮想マシンの設定］を選択します。  

   ![](assets/images/image_install_030.png)

   <div class="alert alert-info">
   仮想マシンの名前は，Enju仮想マシンのバージョンによって異なることがあります。
   </div>
2. ［ハードウェア］タブを選択します。
3. 表示された画面で，以下の推奨値を参考に各項目を設定します。
   * メモリ　　　　　　　：コンピュータに搭載されている全メモリ容量から 1 〜 2GB を減じた値
   * プロセッサ　　　　　：コンピュータに搭載されている CPU のコア数
   * ハードディスク　　　：蔵書規模に応じた値
   * ネットワークアダプタ：［NAT］を選択
4. ［OK］をクリックします。  

   ![](assets/images/image_install_031.png)

{:/comment}

<a name="4-3" />
      
4-3 Enju仮想マシンの起動とログイン
--------------------------------------

Enju仮想マシンを起動し，Ubuntuにログインします。

1. ［xxxx］(例：vagrant_default_1388...)をクリックして，［起動(T)］をクリックします。

   ![［起動(T)］をクリック](assets/images/image_install_032.png)
   
   <div class="alert alert-info">
   上で開いたファイル xxxx.vboxのxxxxの部分になります。
   </div>
2. ウィンドウが起動し、 Ubuntuの起動がはじまります(少し時間がかかります)。「キーボードの自動キャプチャ・・・」「現在のビデオモードでは・・・」というウインドウが出ますので，右の［×］をクリックします。                      

   ![右の［×］をクリック](assets/images/image_install_034_1.png)
   
3. Ubuntuのプロンプトが表示されていることを確認します。また，入力が仮想マシンに切り替わっていることを右下を見て確認します。![](assets/images/image_install_right_ctrl_m.png)（緑の矢印）となっていれば切り替っています。

   ![右下を見て確認](assets/images/image_install_034_4.png)
   
4. ![](assets/images/image_install_right_ctrl_g.png)（グレーの矢印）となっている場合は、右の［Ctrl］キーを押し入力を仮想マシンに切り替えます。「仮想マシンの画面を・・・」という画面が出た場合は，「次回からこのメッセージを表示しない」にチェックをし，［キャプチャー］をクリックします。

   ![チェックして［キャプチャー］をクリック](assets/images/image_install_034_2.png)

   <div class="alert alert-info">
   VirtualBoxの画面にマウスカーソルをあわせてクリックするだけでも仮想マシンに切替ができる場合もあります。
   </div>
5. 以下の初期ユーザー名，初期パスワードでログインします。
   * 初期ユーザー名　：　vagrant
   * 初期パスワード　：　vagrant  

      ![初期ユーザー名，初期パスワードでログイン](assets/images/image_install_034.png)
      
6. ログインし，プロンプトが表示されていることを確認します。  

   ![プロンプトが表示されていることを確認](assets/images/image_install_035.png)
   

<div class="alert alert-info">
【Memo】VirtualBoxでキーボードから入力するときは，右［Ctrl］を押して仮想マシン（ゲストOS）に，右［Ctrl］を押してホストOSに切り替えます。
</div>

<a name="4-4" />

4-4 Enju仮想マシンの初期設定
--------------------------------

<a name="4-4-1" />

### 4-4-1 キーボードの設定

使用するキーボードの種類を登録します。

1. コンピュータに接続しているキーボードの種類によって， enju@enju:~$ に続いて以下のコマンドを入力します。

       sudo loadkeys jp

<div class="alert alert-info">
【Memo】英語キーボードの場合は「sudo loadkeys us」としてください。
</div>

   パスワードの入力をうながされた場合は，パスワード（初期パスワード：vagrant）を入力します。  

   ![キーボードの種類を登録](assets/images/image_install_036.png)
   
<div class="alert alert-info">
場合によっては，「<code>unknown charset unicode - ignoreing charset request</code>」などと表示され，キーボード上の配置が変更されないこともあるようです。ただし，サーバ上で記号を使うすることがなければ，大きな問題はありませんので，そのまま続けてください。ただし，キーボードの記号(!"#$%&'()など)が正しく入力されていない状況では，次項のパスワード中には記号は含めないようにしてください。
</div>

<a name="4-4-2" />
  
### 4-4-2 パスワードの変更

初期ユーザー名「vagrant」に対するパスワードを変更します。

1. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

       passwd

2. 現在のパスワード，新しいパスワード，新しいパスワード（確認）の順に入力します。  

   ![現在のパスワード，新しいパスワード，新しいパスワード（確認）の順に入力](assets/images/image_install_037.png)

{::comment}

2. vagrant@precise64:~$ に続いて以下のコマンドを入力します。

       ruby setip.rb IP_addr

   「IP_addr」に固定するIPアドレスの値として，前項でメモしたIPアドレスを入力します。下の画面では192.168.13.11を指定していますが，これをそのまま打ち込むのではなく，必ず前項でメモした値を指定してください。  

      ![](assets/images/image_install_038.png)

{:/comment}

<a name="4-5" />

4-5 Enjuが正しく起動されているかの確認
------------------------------------------------

Next-L Enjuが正しく起動したかどうかは，サーバ上だけではわかりにくいので，ネットワークに接続された別のコンピュータから確認します。別のマシンといっても，物理的に別のマシンを使うのではなく，Next-L Enjuが動作している同じコンピュータのWebブラウザを用いて確認を行います。なすなわち，ゲストOS(今回の場合はVirtualBox中のEnju仮想マシン)とホストOS(ここではVMwareが動作しているWindows)とは論理的には別のマシンと見なすことができますので，Windows上のWebブラウザを使って確認すれば良いことになります。

1. ホストOS(Windows)に制御を戻します。
   右「Ctrl」キーを押します。
   ウィンドウ右下の矢印が![グレーの矢印](assets/images/image_install_right_ctrl_g.png)（グレーの矢印）のようにグレー色になります。
2. ブラウザからアクセスします。Windows上でWebブラウザを立ち上げます。
3. アドレス欄に```http://localhost:8080```と入力してください（ブラウザによっては ```localhost:8080``` でも可）。うまくいかないばあいは、 [3-1-3 IPアドレスの確認](enju_install_vm_3.html#3-1-3) の 6. で確認した「IPv4のアドレス」（例：```192.168.11.9```）でも確認してみてください。その場合は```http:://IPv4のアドレス:8080```（例：```http://192.168.11.9:8080```）と入力します。 ※ 注意！ Enju_Leaf 1.1.0.rc7版の仮想マシンではり方が異なりますので注意してください。
![ブラウザで起動の確認](assets/images/image_install_078_4.png)

	<a name="4-5-rc7" />

	<div class="alert alert-info" markdown="1"> 
	【Memo】Enju_leaf 1.1.0.rc7 の仮想マシンの場合：

	1. vagrant@precise64:~$ に続いて以下のコマンドを入力し、仮想マシンのIPアドレスを確認します。

	       ifconfig

		etho (または eth1)のところに書かれている inet addr: の値をメモします。以下の画面では，<code>192.168.11.9</code>です。
		もし，画面が流れていって，読めない場合には ```ifconfig | more``` と入力してください。

		![inet addr: の値をメモ](assets/images/image_install_041.png)

	2. アドレス欄に，上で確認したIPアドレスを使って「http://仮想マシンのIPアドレス」（例 ```http://192.168.11.9``` ブラウザによっては ```192.168.11.9``` でも可）と入力してください。

		![ブラウザで起動の確認](assets/images/image_install_078_4_rc7.png)
	</div>

4. "We're sorry ..." といったメッセージがでる場合、solrの起動が完了していない場合があります。数分待ってからもう一度アクセスしてみてください。

これで，同じPC上からも，また別のマシンからもEnjuサーバに対してアクセスすることが可能になりました。このようにアクセスしても正しく画面が表示されない場合には，何らかの設定ミスがあると思われますので，再度インストールしなおしてください。

<a name="4-6" />

4-6 Enjuサーバの停止と再起動
-----------------------------

<a name="4-6-1" />

### 4-6-1 Enju 仮想マシンのシャットダウン

Enju仮想マシンを終了(シャットダウン)させる場合には，正しい手順でのシャットダウンを行う必要があり，VirtualBoxをいきなり終了させたり，PCの電源ボタンを押すなどして強制終了させると，使用中のデータベースファイルが壊れて，再起動できなくなるなどの問題が発生する可能性があります。

1. vagrant@precise64:~/enju$ に続いて以下のコマンドを入力します。

       sudo shutdown -h now

   ここでvagrant のパスワード入力が求められたら，パスワードを打ち込んでください(画面には出力されません)。

Enju仮想マシンをシャットダウンするタイミングは，図書館の運用方針で決定することができます。起動したら基本的にはずっと動作させ続けていても問題ありません。毎日Enju仮想マシンをシャットダウンする，必要な時だけ稼働させるなど，ポリシーに応じた運用をすることができます。

<a name="4-6-2" />

### 4-6-2 Enju 仮想マシンの再起動

1. VirtualBoxが終了していた場合，再度VirtualBoxを起動してください。  

   ![VirtualBox](assets/images/image_install_079.png)
   
2. 「4-3 Enju仮想マシンの起動とログイン」の1~4を実行してEnju仮想マシンを起動してください。
3. 起動して，ユーザ名とパスワードの入力が求められますので，ユーザー名( vagrant )と，前に変更したパスワードを入力してログインしてください。  

   ![ユーザ名とパスワードの入力](assets/images/image_install_034.png)

これで，再度Enju仮想マシンおよびEnjuが利用できるようになりました。

なお、仮想マシンそのものを再起動せずにEnjuプログラム全体を再起動する方法は [第7章 Enjuのアップデート](enju_install_vm_7.html) の手順をご覧ください。
