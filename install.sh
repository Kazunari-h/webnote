
# ダウンロード
wp core download --locale=ja --path=/var/www/html/webnote

# 設定 (環境変数で設定)
wp core config --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=$DBHOST --dbprefix=$DBPREFIX

# インストール
wp core install --url=$URL --title=$TITLE --admin_user=$NAME --admin_password=$PASSWORD --admin_email=$EMAIL

# プラグイン
# セキュリティ
