{% capture page_filename %}{{ page.url | split: "/" | last }}{% endcapture %}
{% if page_filename != 'enju_install_vm.html' and page_filename != 'index.html' %}
<ul class="toc">
<li><a href="enju_install_vm.html">インストールマニュアル（VirtualBox編）</a>
{% endif %}
<ul>
<li><a {% if page_filename == 'enju_install_vm_1.html' %} class="active" {% endif %} href="enju_install_vm_1.html">第1章 Enju概要</a></li>
<li><a {% if page_filename == 'enju_install_vm_2.html' %} class="active" {% endif %} href="enju_install_vm_2.html">第2章 Enjuを動作させる方法</a></li>
<li><a {% if page_filename == 'enju_install_vm_3.html' %} class="active" {% endif %} href="enju_install_vm_3.html">第3章 動作環境の確認とVirtualBoxのインストール</a></li>
<li><a {% if page_filename == 'enju_install_vm_4.html' %} class="active" {% endif %} href="enju_install_vm_4.html">第4章 Enjuのインストール</a></li>
<li><a {% if page_filename == 'enju_install_vm_5.html' %} class="active" {% endif %} href="enju_install_vm_5.html">第5章 モジュールの追加</a></li>
<li><a {% if page_filename == 'enju_install_vm_6.html' %} class="active" {% endif %} href="enju_install_vm_6.html">第6章 検索エンジンの設定</a></li>
<li><a {% if page_filename == 'enju_install_vm_7.html' %} class="active" {% endif %} href="enju_install_vm_7.html">第7章 他のコンピュータからの利用設定</a></li>
<li><a {% if page_filename == 'enju_install_vm_8.html' %} class="active" {% endif %} href="enju_install_vm_8.html">第8章 Enjuのアップデート及び停止・起動</a></li>
<li><a {% if page_filename == 'enju_install_vm_9.html' %} class="active" {% endif %} href="enju_install_vm_9.html">第9章 データのバックアップ</a></li>
<li><a {% if page_filename == 'enju_install_vm_10.html' %} class="active" {% endif %} href="enju_install_vm_10.html">第10章 その他（カスタマイズなど）</a></li>
<li><a {% if page_filename == 'enju_install_vm_11.html' %} class="active" {% endif %} href="enju_install_vm_11.html">第11章 トラブルシューティング</a></li>
</ul>
{% if page_filename != 'enju_install_vm.html' and page_filename != 'index.html' %}
</li>
</ul>
{% endif %}
