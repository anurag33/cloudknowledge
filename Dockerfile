FROM ubuntu:18.04
MAINTAINER anuragkmr328@gmail.com
RUN apt-get update && apt-get install -y apache2 openssh-server openssh-client zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/solar.zip /var/www/html
WORKDIR /var/www/html
RUN unzip solar.zip
RUN cp -rvf solar-energy-website-template/* .
RUN rm -rf solar-energy-website-template solar.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
