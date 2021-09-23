FROM php:7.1-apache

RUN a2enmod rewrite

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qq update && apt-get -qq -y --no-install-recommends install \
    curl \
    unzip \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libjpeg-dev \
    libmemcached-dev \
    zlib1g-dev \
    imagemagick

# install the PHP extensions we need
RUN docker-php-ext-install -j$(nproc) iconv mcrypt \
    pdo pdo_mysql mysqli gd
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

RUN docker-php-ext-install exif && \
    docker-php-ext-enable exif

RUN curl -J -L -s -k \
    'https://github.com/omeka/Omeka/releases/download/v2.7.1/omeka-2.7.1.zip' \
    -o /var/www/omeka.zip \
&&  unzip -q /var/www/omeka.zip -d /var/www/ \
&&  rm /var/www/omeka.zip \
&&  rm -rf /var/www/html \
&&  mv /var/www/omeka-2.7.1 /var/www/html

RUN curl -J -L -s -k \
    'https://github.com/MJoaaquin/theme-curatescape/archive/refs/heads/master.zip' \
    -o /var/www/theme-curatescape-master.zip \
&&  unzip -q /var/www/theme-curatescape-master.zip -d /var/www/html/themes/ \
&&  mv /var/www/html/themes/theme-curatescape-master/curatescape /var/www/html/themes/curatescape \
&&  rm /var/www/theme-curatescape-master.zip

RUN curl -J -L -s -k \
    'https://github.com/CPHDH/CuratescapeJSON/archive/master.zip' \
    -o /var/www/CuratescapeJSON-master.zip \
&&  unzip -q /var/www/CuratescapeJSON-master.zip -d /var/www/html/plugins/ \
&&  mv /var/www/html/plugins/CuratescapeJSON-master /var/www/html/plugins/CuratescapeJSON \
&&  rm /var/www/CuratescapeJSON-master.zip

RUN curl -J -L -s -k \
    'https://github.com/CPHDH/CuratescapeAdminHelper/archive/master.zip' \
    -o /var/www/CuratescapeAdminHelper-master.zip \
&&  unzip -q /var/www/CuratescapeAdminHelper-master.zip -d /var/www/html/plugins/ \
&&  mv /var/www/html/plugins/CuratescapeAdminHelper-master /var/www/html/plugins/CuratescapeAdminHelper \
&&  rm /var/www/CuratescapeAdminHelper-master.zip

RUN curl -J -L -s -k \
    'https://github.com/CPHDH/plugin-TourBuilder/archive/master.zip' \
    -o /var/www/plugin-TourBuilder-master.zip \
&&  unzip -q /var/www/plugin-TourBuilder-master.zip -d /var/www/html/plugins/ \
&&  mv /var/www/html/plugins/TourBuilder-master /var/www/html/plugins/TourBuilder \
&&  rm /var/www/plugin-TourBuilder-master.zip

RUN curl -J -L -s -k \
    'https://github.com/omeka/plugin-Geolocation/releases/download/v3.2/Geolocation-3.2.zip' \
    -o /var/www/Geolocation-3.2.zip \
&&  unzip -q /var/www/Geolocation-3.2.zip -d /var/www/html/plugins/ \
&&  rm /var/www/Geolocation-3.2.zip

RUN curl -J -L -s -k \
    'https://github.com/omeka/plugin-SimplePages/releases/download/v3.1.2/SimplePages-3.1.2.zip' \
    -o /var/www/SimplePages-3.1.2.zip \
&&  unzip -o -q /var/www/SimplePages-3.1.2.zip -d /var/www/html/plugins/ \
&&  rm /var/www/SimplePages-3.1.2.zip

RUN curl -J -L -s -k \
    'https://github.com/CPHDH/SuperRss/archive/master.zip' \
    -o /var/www/SuperRss-master.zip \
&&  unzip -q /var/www/SuperRss-master.zip -d /var/www/html/plugins/ \
&&  mv /var/www/html/plugins/SuperRss-master /var/www/html/plugins/SuperRss \
&&  rm /var/www/SuperRss-master.zip

RUN curl -J -L -s -k \
    'https://github.com/ebellempire/MoreUserRoles/archive/master.zip' \
    -o /var/www/MoreUserRoles-master.zip \
&&  unzip -q /var/www/MoreUserRoles-master.zip -d /var/www/html/plugins/ \
&&  mv /var/www/html/plugins/MoreUserRoles-master /var/www/html/plugins/MoreUserRoles \
&&  rm /var/www/MoreUserRoles-master.zip


RUN  chown -R www-data:www-data /var/www/html

COPY ./db.ini /var/www/html/db.ini
COPY ./.htaccess /var/www/html/.htaccess
COPY ./imagemagick-policy.xml /etc/ImageMagick/policy.xml

VOLUME /var/www/html

CMD ["apache2-foreground"]
