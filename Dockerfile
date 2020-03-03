        php7-pdo_pgsql \
        php7-bcmath \
        php7-gd \
        php7-odbc \
        php7-pdo_mysql \
        php7-pdo_sqlite \
        php7-gettext \
        php7-xml \
        php7-xmlreader \
        php7-xmlwriter \
        php7-tokenizer \
        php7-xmlrpc \
        php7-bz2 \
        php7-pdo_dblib \
        php7-curl \
        php7-ctype \
        php7-session \
        php7-redis \
        php7-exif \
        php7-intl \
        php7-fileinfo \
        php7-ldap \
        php7-apcu
#Copy Application Files
RUN rm -rf /var/www/html/*
ADD dockerize-php-sample /var/www/html
#open port 80
EXPOSE 81
#Start Apache service
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"] 
