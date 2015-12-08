{% if page.url != '/enju_webapi.html' and page.url != '/index.html' %}
<ul class="toc">
<li><a href="enju_webapi.html">Web APIマニュアル</a>
{% endif %}
<ul>
<li><a {% if page.url == '/enju_webapi_1.html' %} class="active" {% endif %} href="enju_webapi_1.html">第1章 検索結果一覧を取得する</a></li>
</ul>
{% if page.url != '/enju_webapi.html' and page.url != '/index.html' %}
</li>
</ul>
{% endif %}
