FROM ubuntu:16.04
MAINTAINER Prasad Domala <prasad.domala@gmail.com>
#updateRepository
RUN apt-get install -y
#installApache
#RUN apt-get install -y apache2
#install php modules
RUN apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip
#copy application files
RUN rm -rf /var/www/html/*
ADD dockerize-php-sample /var/www/html
#configure apache(optional)
RUN chown -R www-data:www-data /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
#open port 80
EXPOSE 80
#start apache service
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
