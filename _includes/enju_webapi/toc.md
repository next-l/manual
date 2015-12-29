{% capture page_filename %}{{ page.url | split: "/" | last }}{% endcapture %}
{% if page_filename != 'enju_webapi.html' and page_filename != 'index.html' %}
<ul class="toc">
<li><a href="enju_webapi.html">Web APIマニュアル</a>
{% endif %}
<ul>
<li><a {% if page_filename == 'enju_webapi_1.html' %} class="active" {% endif %} href="enju_webapi_1.html">第1章 検索結果一覧を取得する</a></li>
</ul>
{% if page_filename != 'enju_webapi.html' and page_filename != 'index.html' %}
</li>
</ul>
{% endif %}
