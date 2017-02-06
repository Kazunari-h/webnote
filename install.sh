# WP-CLIのインストール
# http://qiita.com/IK12_info/items/4a9190119be2a0f347a0

source .env

# ダウンロード
wp core download --locale=ja --path=/var/www/$WPDIRECTORY

cd /var/www/$WPDIRECTORY

# 設定 (環境変数で設定 $DBNAME, $DBUSER, $DBPASS, $DBHOST, $DBPREFIX)
wp core config --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=$DBHOST --dbprefix=$DBPREFIX

# インストール(環境変数で設定 $WPURL, $WPTITLE, $WPNAME, $WPPASSWORD, $WPEMAIL)
wp core install --url=$WPURL --title=$WPTITLE --admin_user=$WPNAME --admin_password=$WPPASSWORD --admin_email=$WPEMAIL

# プラグイン
wp plugin install akismet
wp plugin install contact-form-7
wp plugin install wp-multibyte-patch
wp plugin install crayon-syntax-highlighter
wp plugin install jp-markdown
wp plugin install wp-social-bookmarking-light
wp plugin install tinymce-advanced
wp plugin install bj-lazy-load

# テーマ作成
wp plugin install one-click-child-theme

# セキュリティ
wp plugin install crazy-bone
wp plugin install limit-login-attempts

# google系
wp plugin install google-sitemap-generator
wp plugin install google-analytics-for-wordpress

source edit.sh

chmod 404 wp-config.php


// テーマのインストール
wp theme install habakiri
