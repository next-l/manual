{% if page.url != '/enju_user.html' and page.url != '/index.html' %}
<ul class="toc">
<li><a href="enju_user.html">利用者マニュアル</a></li>
{% endif %}
<ul>
<li><a {% if page.url == '/enju_user_1.html' %} class="active" {% endif %} href="enju_user_1.html">第1章 資料を検索する</a></li>
<li><a {% if page.url == '/enju_user_2.html' %} class="active" {% endif %} href="enju_user_2.html">第2章 ログイン/ログアウトする</a></li>
<li><a {% if page.url == '/enju_user_3.html' %} class="active" {% endif %} href="enju_user_3.html">第3章 パスワード/ユーザアカウント情報を変更する</a></li>
<li><a {% if page.url == '/enju_user_4.html' %} class="active" {% endif %} href="enju_user_4.html">第4章 資料を予約する</a></li>
<li><a {% if page.url == '/enju_user_5.html' %} class="active" {% endif %} href="enju_user_5.html">第5章 資料の貸出状況を確認する/貸出延長をする</a></li>
<li><a {% if page.url == '/enju_user_6.html' %} class="active" {% endif %} href="enju_user_6.html">第6章 新着資料の一覧を表示する</a></li>
</ul>
