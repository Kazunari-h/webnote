
# ダウンロード
wp core download --locale=ja --path=/var/www/webnote

cd /var/www/webnote

# 設定 (環境変数で設定 $DBNAME, $DBUSER, $DBPASS, $DBHOST, $DBPREFIX)
wp core config --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=$DBHOST --dbprefix=$DBPREFIX

# インストール(環境変数で設定 $WPURL, $WPTITLE, $WPNAME, $WPPASSWORD, $WPEMAIL)
wp core install --url=$WPURL --title=$WPTITLE --admin_user=$WPNAME --admin_password=$WPPASSWORD --admin_email=$WPEMAIL

# プラグイン
wp plugin install akismet
wp plugin install contact-form-7 --activate
wp plugin install wp-multibyte-patch --activate
wp plugin install crayon-syntax-highlighter --activate
wp plugin install jp-markdown --activate
wp plugin install wp-social-bookmarking-light --activate
wp plugin install tinymce-advanced --activate
wp plugin install bj-lazy-load --activate

# テーマ作成
wp plugin install one-click-child-theme

# セキュリティ
wp plugin install crazy-bone --activate
wp plugin install limit-login-attempts

# google系
wp plugin install google-sitemap-generator --activate
wp plugin install google-analytics-for-wordpress

touch .htaccess

cat << EOS > .htaccess
<files wp-config.php>
order allow,deny
deny from all
</files>
EOS

chmod 400 wp-config.php


// テーマのインストール
wp theme install habakiri --activate