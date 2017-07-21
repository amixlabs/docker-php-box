FROM amixsi/centos:7.1

ENV PATH "/composer/vendor/bin:$PATH"
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

RUN composer global require kherge/box && \
    composer clear-cache && \
    sed -i '/^;phar.readonly/aphar.readonly = Off' /etc/php.ini

ENTRYPOINT ["/composer/vendor/bin/box"]