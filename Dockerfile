FROM ubuntu:latest
RUN apt update && apt -y install apache2 ufw openssh-server && ufw allow OpenSSH && ufw enable && ufw allow 'Apache'
WORKDIR /var/www/fotografobrasileiroemamsterdam
COPY . .
EXPOSE 80
