FROM amixsi/centos:7.1

RUN composer global require kherge/box && \
    composer clear-cache && \
    sed -i '$a PATH=$PATH:$HOME/.composer/vendor/bin' ~/.bashrc && \
    sed -i '/^;phar.readonly/aphar.readonly = Off' /etc/php.ini

ENTRYPOINT ["/root/.composer/vendor/bin/box"]