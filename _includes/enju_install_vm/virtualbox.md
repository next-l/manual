第3章 動作環境の確認とVirtualBoxのインストール
==================================================

3-1 動作環境を確認する
----------------------

作業を開始する前に，Enjuをインストールするコンピュータの環境を確認します。
この文書では，Windows7 でのやり方について説明します。

{::comment}

また，コンピュータの環境に応じてEnju仮想マシンの64bit版を用いるか32bit版を用いるかを決めます。


### ■コンピュータの仕様の確認

64bit版の仮想マシンを使うためには，使っているコンピュータがハードウェアの仮想化に対応している必要があります。

コンピュータのCPUのメーカーであるIntelおよびAMDは，どちらもハードウェアの仮想化に対応していますが、使用する用語が異なります。Intelは「インテル バーチャライゼーション・テクノロジー(Intel VT)」と呼び，AMDは「AMD Virtualization(AMD-V)」と呼びます。このいずれかに対応しているかを，コンピュータのマニュアル，Webページなどで確認してください。

ただし，CPUが仮想化に対応していたとしても，BIOSの制約で仮想化が行えないようになっている場合や，BIOSの変更をしなければ初期状態では仮想化がオフになっている場合も多いです。この場合，起動時にBIOS設定でプロセッサの仮想化への対応を有効(Enable)に設定する必要があります。

{:/comment}

### ■Windowsが64bit版であるかの確認，使用可能メモリ容量の確認

Windowsが64ビット版であるか，メモリ容量をシステムのプロパティで確認します。※32bit版でも動くかとおもいますが，検証できていません

1. ［スタート］ボタンをクリックし，［コンピュータ］を右クリックします。
2. ［プロパティ］をクリックします。  
   ![［スタート］ボタンをクリックし，［コンピュータ］を右クリックします](assets/images/image_install_004.png)
3. 以下の項目を確認します。
   * システムの種類 : 64bitのオペレーティングシステム
   * 実装メモリ　　 : 使用可能容量が 2.00GB 以上
   ![コンピュータのプロパティ画面から動作環境を確認します](assets/images/image_install_005.png)

### ■ハードディスク空き容量の確認

Enju仮想マシンのインストールと動作に必要なハードディスクの空き容量を確認します。

1. ［スタート］ボタンをクリックし，［コンピュータ］を選択します。
   ![［スタート］ボタンをクリックし，［コンピュータ］を選択します](assets/images/image_install_006.png)
2. 以下の項目を確認します。  
   * ドライブの空き容量 : 25.0GB以上を推奨  
   ![ハードディスクの空き容量の確認](assets/images/image_install_007.png)

<div class="alert alert-info">
<span class="label label-info">Memo</span>
ハードディスクに必要な空き容量は，蔵書規模により異なります。25.0GBは蔵書が20 万件の規模を想定しています。これよりも蔵書規模が大きい場合は，より多くの容量が必要となります。
</div>

### ■IPアドレスの確認

ホストOSのIPアドレスを確認します。

1. ［スタート］ボタンをクリックし，［コントロールパネル］を選択します。  
   ![](assets/images/image_install_019.png)
2. ［ネットワークとインターネット］をクリックします。  
   ![](assets/images/image_install_020.png)
3. ［ネットワークと共有センター］をクリックします。  
   ![](assets/images/image_install_021.png)
4. ［アクティブネットワークの表示］で［ローカルエリア接続］または［ワイヤレスネットワーク接続］をクリックします。  
   ![](assets/images/image_install_022.png)
5. ［詳細］をクリックします。  
   ![](assets/images/image_install_023.png)
6. 表示された画面で，以下の情報をメモなどに記録します。

   * DHCPの状態
   * IPv4アドレス
   * IPv4サブネットマスク
   * IPv4デフォルトゲートウェイ
   * IPv4 DNSサーバ

   ![](assets/images/image_install_024.png)

{::comment}
   
### ■動作環境による判定

VirtualBox用に用意された Next-L Enju仮想マシンには，64bit版と32bit版の２種類があります。64bit版の方が高速で制約事項も少なく，快適に利用することができますが，バーチャライゼーション・テクノロジー(Virtualization Technology / VT)に対応したCPUを搭載したコンピュータでないと動作しません。

<div class="alert alert-info">
基本的にはIntel VT-x または AMD-Vに対応したCPUを搭載したコンピュータであれば64bit版が動作する筈なのですが，さまざまな理由から，対応したCPUを搭載したコンピュータでも動作しない場合もあります。
</div>

#### 64bit版のEnju仮想マシンを利用する場合

* VirtualBoxが動作する x86またはx64pプロセッサ(64bitのCPU)を搭載したコンピュータ
* Windows XP/Vista/7の64bit版
* 2.0GB以上のメモリ
* 25GB以上のハードディスク空き容量
** 蔵書規模20万件の場合。蔵書規模によりさらに多くの空き容量が必要
* LANでネットワークに接続された環境

#### 32bit版のEnju仮想マシンを利用する場合

* VirtualBoxが動作する 64bit または 32bitのCPUを搭載したコンピュータ
* Windows XP/Vista/7の32bt または 64bit版
* 2.0GB以上のメモリ
* 25GB以上のハードディスク空き容量
** 蔵書規模20万件の場合。蔵書規模によりさらに多くの空き容量が必要
* LANでネットワークに接続された環境

**基本的には，新しいマシンであれば多くの場合，64bit版が動作すると思われます。マニュアルなどを参考に，バーチャライゼーション・テクノロジー機能を「有効」にし，64bit版をできるだけお使いください。もし，コンピュータの性能その他の問題で動作しない場合には，32bit版をお使いください。**
{:/comment}

3-2 VirtualBoxのダウンロードとインストール
----------------------------------------------

### ■VirtualBoxのダウンロード

VirtualBoxはOracle社のWebサイトからダウンロードします。ダウンロードURLは登録後にメールで送付されるため，メールアドレスが必要です。

1. 以下のVMware社のWebページで［ダウンロード］をクリックします。
   [http://www.vmware.com/jp/products/player/](http://www.vmware.com/jp/products/player/)  
   ![](assets/images/image_install_008.png)
2. 必要な情報を入力し，登録を行います。  
   ![](assets/images/image_install_009.png)
3. 登録したメールアドレスに対してダウンロードURLが送信されます。  
   ![](assets/images/image_install_010.png)
4. 受信したURLを開き，登録したメールアドレスを入力して［続行］をクリックします。  
   ![](assets/images/image_install_011.png)

   <div class="alert alert-info">
   場合によってはメールアドレスの指定を求められないこともある。
   </div>
5. VirtualBoxのWindowsプロダクトをダウンロードします。保存する場所がどこであるのかわかりにくいことがあるので注意してください。  
   ![](assets/images/image_install_012.png)

   <div class="alert alert-info">
   画面表示は，「Binaries」が「VirtualBox」であったりと多少異なることがある。
   </div>

### ■VirtualBoxのインストール

前項でダウンロードしたファイルを実行し，VirtualBoxをインストールします。

1. ダウンロードしたファイルを実行します。  
   ![](assets/images/image_install_013.png)
2. ウィザードに従ってVirtualBoxをインストールします。  
   ![](assets/images/image_install_014.png)

   <div class="alert alert-info">
   ウィザードの途中，「ショートカットを作成するかどうか」「ソフトウェアの更新を確認するかどうか」「ユーザーエクスペリエンス改善プログラムに協力するか」などの確認画面が表示されることがある。いずれも「続行」を指定すればよい。
   </div>
3. コンピュータを再起動します。  
   ![](assets/images/image_install_015.png)

<div class="alert alert-info">
【Memo】VirtualBoxのインストールはCドライブに行います。フォルダーをはじめとする設定項目は任意ですが，デフォルトのままインストールを実行しても構いません。
</div>
