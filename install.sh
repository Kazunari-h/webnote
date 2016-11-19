
# ダウンロード
wp core download --locale=ja --path=/var/www/html/webnote

# 設定 (環境変数で設定)
wp core config --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=$DBHOST --dbprefix=$DBPREFIX

# インストール
wp core install --url=$URL --title=$TITLE --admin_user=$NAME --admin_password=$PASSWORD --admin_email=$EMAIL

# プラグイン
wp plugin install akismet
wp plugin install contact-form-7
# font-awesome-4-menus
wp plugin install lightbox-plus-colorbox
wp plugin install page-transition
wp plugin install wp-visual-icon-fonts
wp plugin install wp-multibyte-patch
wp plugin install crayon-syntax-highlighter
wp plugin install jp-markdown
wp plugin install wp-social-bookmarking-light
wp plugin install tinymce-advanced
# http://g-frontier.net/blog/bj-lazy-load/
wp plugin install bj-lazy-load

# テーマ作成
wp plugin install one-click-child-theme

# セキュリティ
wp plugin install crazy-bone
wp plugin install limit-login-attempts

# マーケ
wp plugin install google-sitemap-generator
wp plugin install google-analytics-for-wordpress
# wp plugin install custom-field-template
# wp plugin install custom-post-type-permalinks
# wp plugin install wordpress-importer
# wp plugin install wp-mail-smtp
# wp plugin install wp-sitemanager
# wp plugin install wpx-nav-menus
