FROM ubuntu:20.04

RUN apt update -y \
&&  apt-get install --no-install-recommends \
&&  DEBIAN_FRONTEND=noninteractive apt install apache2 -y \
&&  apt install php libapache2-mod-php php-mysql -y

WORKDIR /var/www/html/php-jenkins-codes
COPY . .
RUN chmod +x start.sh
CMD ./start.sh
