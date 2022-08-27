---
layout: page
title: 第11章 トラブルシューティング - Next-L Enju インストールマニュアル（Docker編）
title_short: 第11章 トラブルシューティング
group: enju_install_vm
version: 1.4
---

* Contents
{:toc}
{::comment} FAQ.md {:/comment}

第11章 トラブルシューティング {#section11}
===========================================

## Q. Dockerでプロキシ環境でも使用できる方法をおしえてください。

(TBD)

## Q. VT機能が無効になっているというメッセージが表示されます。

(TBD)

## Q. 大きなファイルをTSVインポートしようとすると"413 Request Entity Too Large　nginx/1.4.6 (Ubuntu)"といったエラーメッセージが表示されてできません。

(TBD)

## Q. 504 Gateway Timeout というエラーメッセージが表示されて画面が表示されません。

設定の誤り等により起動時にエラーが発生している場合、ログファイルを確認する必要があります。
以下のコマンドで、エラーメッセージが出ていないかを確認してください。

```
docker compose logs -f web
```

{% include enju_install_vm/toc_1.4.md %}
