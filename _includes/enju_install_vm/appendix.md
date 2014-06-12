{::comment} appendix.md {:/comment}
<a name="appendix" />

Appendix
========

■ Enju仮想マシン中の設定ファイル
---------------------------------

Enju仮想マシンのファイル中には，「Ubuntu 64-bit Enju.vmx」というファイルが存在しています。実は，この *.vmx ファイルはテキストファイルであり，VirtualBoxの設定ファイルとなっています。ネットワークの設定や，仮想マシンへの割り当てメモリ量などが変更可能です。

数多くの設定項目のうち，Enju仮想マシンで特に重要なのは，以下の項目です。仮想マシンを作成している環境の都合上，配布されているパッケージは，必ずしも以下の設定になっていない部分がありますので，各自，自分の環境にあわせて修正してください。修正については，エディタと呼ばれるソフトウェアを用いることができます。たとえば，MS-Windowsに標準で付与されている「メモ帳」はエディタのひとつです。

なお，MS-Wordなどの日本語ワープロを用いた修正は，テキスト以外の記号が混じってしまい正しく設定されない可能性があるので，行わないでください。

1. 全般設定

       config.version = "8"
       virtualHW.version = "7"
       extendedConfigFile = "Ubuntu 64-bit Enju.vmxf"
       displayName = "Ubuntu 64-bit Enju"
       guestOS = "ubuntu-64"
       nvram = "Ubuntu 64-bit Enju.nvram"
       virtualHW.productCompatibility = "hosted"
       memsize = "2048"
                 # PCに搭載したメモリ量に応じて変更してください

2. 作成したディスクイメージファイルをSCSIディスクとして接続する設定

       scsi0.present = "TRUE"
       scsi0:0.present = "TRUE"
       scsi0:0.fileName = "Ubuntu 64-bit Enju.vmdk"
       scsi0.virtualDev = "lsilogic"
             # Fusion MPT SPI SCSI Host Adapter(Ultra320)のエミュレーションなので，うまく動作しなければ，lsilogic ではなく buslogicでも試してください

3. ネットワークの設定

       ethernet0.present = "TRUE"
       ethernet0.connectionType = "bridged"
       ethernet0.virtualDev = "e1000"
       ethernet0.wakeOnPcktRcv = "FALSE"
       ethernet0.addressType = "generated"
       ethernet0.linkStatePropagation.enable = "TRUE"

   <div class="alert alert-info">
   ネットワークの設定については，設置者の状況によって大きく異なる可能性がある
   </div>

4. その他のデバイスの設定

       usb.present = "TRUE"
       ehci.present = "TRUE"
       floppy0.present = "FALSE"
               # フロッピーディスクが存在する場合は"TRUE"としてください

これ以外の設定については，基本的には必要ありません(必要なものは，起動後に自動生成されます)が，自身の環境にあわせて設定する場合は，以下のような設定をすることもできます。詳細はご自身で確認ください。たとえば，サウンド機能が実装されているPCであれば，「sound.present = "TRUE"」と指定する，サーバに接続したプリンタを使用する場合には「printers.enabled = "TRUE"」と指定するなどがあります。ただし，Enjuの標準機能では，これらの機能は使用しませんので，Enjuを実行するためには不要です。

また，Enju仮想マシンファイルのバージョンによっては，以下の指定がされている場合があります。これらの指定がある場合，起動時にエラーが表示される場合もあり，また設定そのものも不必要ですので削除いただいて構いません。
