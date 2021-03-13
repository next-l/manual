{% capture page_filename %}{{ page.url | split: "/" | last }}{% endcapture %}
{% if page_filename != 'enju_webapi.html' and page_filename != 'index.html' %}
<ul class="toc">
<li><a href="enju_webapi.html">Web APIマニュアル</a>
{% endif %}
<ul>
<li><a {% if page_filename == 'enju_webapi_1.html' %} class="active" {% endif %} href="enju_webapi_1.html">第1章 検索結果一覧を取得する</a></li>
<li><a {% if page_filename == 'enju_webapi_2.html' %} class="active" {% endif %} href="enju_webapi_2.html">第2章 検索結果詳細を取得する</a></li>
<li><a {% if page_filename == 'enju_webapi_3.html' %} class="active" {% endif %} href="enju_webapi_3.html">第3章 書誌情報をまとめて取得する (OAI-PMH)</a></li>
<li><a {% if page_filename == 'enju_webapi_4.html' %} class="active" {% endif %} href="enju_webapi_4.html">第4章 外部システムから書誌情報にリンクする (OpenURL)</a></li>
</ul>
{% if page_filename != 'enju_webapi.html' and page_filename != 'index.html' %}
</li>
</ul>
{% endif %}
