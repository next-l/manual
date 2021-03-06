---
layout: page
title: 第9章 データのバックアップ - Next-L Enju インストールマニュアル（VirtualBox編）
title_short: 第9章 データのバックアップとリストア
group: enju_install_vm
version: 1.3
---

* Contents
{:toc}

第9章 データのバックアップとリストア {#section9}
================================================

{:toc}

以下の方法があります。

* 仮想マシンのクローンをつくる・使う
* 仮想マシンのWindows上のファイルのバックアップをとる・使う
* 仮想マシン上のデータのみのバックアップ・リストアする

9-1 仮想マシンのクローンを作成する・使う {#section9-1}
------------------------------------------------------

今使ってる仮想マシンとそっくりなコピー（＝クローン）を同じPC上に作る方法です。
enjuのアップデートを試すときなどに使います。

![仮想マシンのクローンのパターン](../assets/images/1.1/image_install_backup_pattern1.png)

### 9-1-1 仮想マシンのクローンを作成する {#section9-1-1}

今使ってる仮想マシンとそっくりなコピー（＝クローン）を同じPC上に作る方法です。

#### 1. 現在、使っている仮想マシンをシャットダウンします。

[「4-6-1 Enju 仮想マシンのシャットダウン」](enju_install_vm_4.html#section4-6-1)を参照してください。

#### 2. VirtualBox の現在使っている仮想マシンをクリックします。

![現在使っている仮想マシン](../assets/images/1.1/image_install_backup_pattern1_003.png)

#### 3. 「仮想マシン」メニューの「クローン(O)...」をクリックします。

![仮想マシンメニューのクローン](../assets/images/1.1/image_install_backup_pattern1_005.png)

#### 4. 名前を入力し※、「次へ」をクリックします。

※とくに変更しなければ、 「_クローン」という名前になります。日付などをつけてわかりやすい名前にしておくことをお勧めします。

![仮想マシンのクローンウインドウ](../assets/images/1.1/image_install_backup_pattern1_007.png)

#### 5. 「すべてをクローン」になっていることをを確認し※、「クローン」をクリックします。

※なっていなければ、選択します。

![仮想マシンのクローンのタイプ](../assets/images/1.1/image_install_backup_pattern1_009.png)

#### 6. しばらく待ちます。時間がかかります。

以下のような、ウインドウがでます。
![クローンを待つ](../assets/images/1.1/image_install_backup_pattern1_011.png)

#### 7. クローンが作成されました。

![クローンの作成完了](../assets/images/1.1/image_install_backup_pattern1_013.png)

### 9-1-2 仮想マシンのクローンを使用する {#section9-1-2}

[「4-3 Enju仮想マシンの起動とログイン」](enju_install_vm_4.html#section4-3)と同様の手順で使用できます。

9-2 仮想マシンごとバックアップをとる・使う {#section9-2}
--------------------------------------------------------

今使っている仮想マシンを外付けのHDDにコピーして、
マシンのハードウェア障害に備えたり、
別のマシンに仮想マシンごと移築したいときの方法です。

![仮想マシンごとバックアップのパターン](../assets/images/1.1/image_install_backup_pattern2.png)

### 9-2-1 仮想マシンごとバックアップをとる {#section9-2-1}

#### 1. 現在、使っている仮想マシンをシャットダウンします。

[「4-6-1 Enju 仮想マシンのシャットダウン」](enju_install_vm_4.html#section4-6-1)を参照してください。

#### 2. VirtualBox の現在使っている仮想マシンをクリックします。

![現在使っている仮想マシン](../assets/images/1.1/image_install_backup_pattern1_003.png)

#### 3. 「仮想マシン」メニューの「エクスプローラーに表示」をクリックします。

![仮想マシンメニューのクローン](../assets/images/1.1/image_install_backup_pattern2_005.png)

#### 4. 表示されたファイルやフォルダを全て外付けHDDにコピーします。

![仮想マシンメニューのクローン](../assets/images/1.1/image_install_backup_pattern2_007.png)

### 9-2-2 バックアップをとったデータを使う {#section9-2-2}

バックアップをしたファイルを他のマシンにコピーし、
[「4-2 VirtualBoxを開く」](enju_install_vm_4.html#section4-2)と同様の手順で使用できます。

9-3 データのみのバックアップ {#section9-2}
------------------------------------------

仮想マシン以外マシンにサーバーを移したいとき、例えば、Amazon EC2に移植したい、
Macに移植したい、Cent OS に移植したいといった場合の方法です。
こちらについては、[他のサーバへの移行（https://github.com/next-l/enju_leaf/wiki/Backup）](https://github.com/next-l/enju_leaf/wiki/Backup)を参照してください。

![データのみのバックアップのパターン](../assets/images/1.1/image_install_backup_pattern3.png)


{::comment}別ファイル名候補：backup.md{:/comment}

{% include enju_install_vm/toc.md %}
