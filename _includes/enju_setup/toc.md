{% capture page_filename %}{{ page.url | split: "/" | last }}{% endcapture %}
{% if page_filename != 'enju_setup.html' and page_filename != 'index.html' %}
<ul class="toc">
<li><a href="enju_setup.html">初期設定マニュアル</a>
{% endif %}
<ul>
<li><a {% if page_filename == 'enju_setup_1.html' %} class="active" {% endif %} href="enju_setup_1.html">第1章 Enju概要</a></li>
<li><a {% if page_filename == 'enju_setup_2.html' %} class="active" {% endif %} href="enju_setup_2.html">第2章 Enjuを利用する</a></li>
<li><a {% if page_filename == 'enju_setup_3.html' %} class="active" {% endif %} href="enju_setup_3.html">第3章 図書館のシステム設定を行う</a></li>
<li><a {% if page_filename == 'enju_setup_4.html' %} class="active" {% endif %} href="enju_setup_4.html">第4章 件名のシステム設定を行う</a></li>
<li><a {% if page_filename == 'enju_setup_5.html' %} class="active" {% endif %} href="enju_setup_5.html">第5章 各種形態や状態等に関するシステム設定を行う</a></li>
<li><a {% if page_filename == 'enju_setup_6.html' %} class="active" {% endif %} href="enju_setup_6.html">第6章 資料に関するシステム設定を行う</a></li>
<li><a {% if page_filename == 'enju_setup_7.html' %} class="active" {% endif %} href="enju_setup_7.html">第7章 その他</a></li>
</ul>
{% if page_filename != 'enju_setup.html' and page_filename != 'index.html' %}
</li>
</ul>
{% endif %}
