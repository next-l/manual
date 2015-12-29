{% capture page_filename %}{{ page.url | split: "/" | last }}{% endcapture %}
{% if page_filename != 'enju_operation.html' and page_filename != 'index.html' %}
<ul class="toc">
<li><a href="enju_operation.html">運用マニュアル</a>
{% endif %}
<ul>
<li><a {% if page_filename == 'enju_operation_1.html' %} class="active" {% endif %} href="enju_operation_1.html">第1章 Enju概要</a></li>
<li><a {% if page_filename == 'enju_operation_2.html' %} class="active" {% endif %} href="enju_operation_2.html">第2章 Enjuを利用する</a></li>
<li><a {% if page_filename == 'enju_operation_3.html' %} class="active" {% endif %} href="enju_operation_3.html">第3章 利用者情報を管理する</a></li>
<li><a {% if page_filename == 'enju_operation_4.html' %} class="active" {% endif %} href="enju_operation_4.html">第4章 図書の受入をする</a></li>
<li><a {% if page_filename == 'enju_operation_5.html' %} class="active" {% endif %} href="enju_operation_5.html">第5章 雑誌の受入をする</a></li>
<li><a {% if page_filename == 'enju_operation_6.html' %} class="active" {% endif %} href="enju_operation_6.html">第6章 貸出・返却・予約を処理する</a></li>
<li><a {% if page_filename == 'enju_operation_7.html' %} class="active" {% endif %} href="enju_operation_7.html">第7章 休館日と催し物を登録する</a></li>
<li><a {% if page_filename == 'enju_operation_8.html' %} class="active" {% endif %} href="enju_operation_8.html">第8章 資料を検索する</a></li>
<li><a {% if page_filename == 'enju_operation_9.html' %} class="active" {% endif %} href="enju_operation_9.html">第9章 蔵書点検機能を利用する</a></li>
<li><a {% if page_filename == 'enju_operation_10.html' %} class="active" {% endif %} href="enju_operation_10.html">第10章 統計機能を利用する</a></li>
<!-- <li><a {% if page_filename == 'enju_operation_11.html' %} class="active" {% endif %} href="enju_operation_11.html">第11章 その他の機能を利用する</a></li> -->
</ul>
{% if page_filename != 'enju_operation.html' and page_filename != 'index.html' %}
</li>
</ul>
{% endif %}
