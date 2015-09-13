---
layout: page
title: 第10章 トラブルシューティング - Next-L Enju インストールマニュアル（VirtualBox編）
title_short: 第10章 トラブルシューティング
group: enju_install_vm
---

* Contents
{:toc}
{::comment} FAQ.md {:/comment}

第10章 トラブルシューティング {#section10}
===========================================

## Q. 仮想マシンにsshでアクセスする場合のIPアドレスとポート番号が分かりません。

仮想マシンのバージョンによってやり方が異なります。

1. Next-L Enju Leaf 1.1.0.rc12以降の場合：
   * IPアドレス：localhost
      * または 127.0.0.1 
      * または 「仮想マシンをインストールしたマシン自身のIPアドレス」(--> 参考：[3-1-3 IPアドレスの確認](enju_install_vm_3.html#section3-1-3)の 6. のIPv4のアドレス )
   * ポート番号：2222

2. Next-L Enju Leaf 1.1.0.rc7の場合：
   * IPアドレス：```ifconfig```で表示されるIPアドレス（--> [詳細へ](enju_install_vm_4.html#section4-5-rc7)）
   * ポート番号：22　（デフォルトのポート番号）

## Q. http://localhost:8080 にアクセスしたらすでに使われています？といったエラーがでて起動できません。

（工事中）

## Q. VirtualBoxでプロキシ環境でも使用できる方法をおしえてください。

#### 1. https へのアクセスは可能である必要があります。

#### 2. ~/.profileに以下の2行を追加してください。プロキシのホスト名とポートは適宜変更してください。rubygems.orgからgemを取得したり、EnjuがNDLサーチ検索など外部のサービスにアクセスするための設定です。

	export http_proxy=http://proxy.example.com:8080
	export https_proxy=$http_proxy

#### 3. ~/.gitconfig（無ければこのファイルを作成する） に以下を記入してください。gitでプロキシを使用するための設定です。

	[https]
		proxy = http://proxy.example.com:8080
	[http]
		proxy = http://proxy.example.com:8080
	[url "https://"]
		insteadOf = git://

#### 4. ログアウトしてログインしなおしてください

#### 5. Enjuを再起動してください（--> [詳細へ](enju_install_vm_7.html#section7-3)）

<div class="alert alert-info memo">
【Memo】バージョン1.1.0rc15現在、認証機能付きプロキシ設定には対応していません。
</div>

## Q. VT機能が無効になっているというメッセージが表示されます。

VirtualBoxを起動した際，64bit CPUを使用していても，以下のような警告画面が表示されて起動できないことがあります。これは，Virtualization Technologyという機能が無効になっている場合などに表示されます。

各コンピュータのマニュアルを参照してBIOSのセットアップでVirtualization Technology機能を有効にしてから再起動してください。

Virtualization Technology機能を有効にしても，VirtualBoxを再起動した際，エラーが発生して正しく動作しないことがあります。その場合，再起動を何度か行う，再インストールを行うなどしてください。

## Q.「xxxx.vbox」というファイルが見つからない。

以下を確認してください。

1. 「仮想マシン(M)」→「追加(A))」を押していますか。
   * 「追加(A)」を押すと，「仮想マシンファイルを選択」というウィンドウが開いて，ファイルを選択することができるようにならないでしょうか？
2. 正しい場所を選択していますか。
   * 配布されているzipファイルを展開した時に作成されるフォルダを選択してください。展開したフォルダが見つからない場合は，zipファイルを展開するということ自体が正しくできているかどうか確認してください。

## Q. ネットワークの設定で，IPアドレスの割り当てが正常に行われません。

eth1に対するIPアドレスの割り当てが正常に行われず，ifconfigした場合にlo のみしか表示されなくなってしまう場合があります。このような場合においては，2.7に示す /etc/network/interfacesの指定時に，eth1 ではなく，全てeth0と指定して再度起動してみてください。

{% include enju_install_vm/toc.md %}
