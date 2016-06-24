FROM mysql:5.7

MAINTAINER Toru TAMURA <torut@ttsoft.jp>

# 文字コードを utf-8 に変更するなど個別設定ファイル
COPY mysql-conf.d /etc/mysql/conf.d
RUN chmod 644 /etc/mysql/conf.d/*.cnf

COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
