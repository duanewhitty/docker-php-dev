FROM php:7.3.0-apache-stretch
RUN apt-get update && apt-get install -y vim git ctags silversearcher-ag \
    && rm -rf /var/lib/apt/lists/*
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
COPY ./.vimrc /root/.vimrc
COPY ./.vim /root/.vim
WORKDIR /var/www/html
