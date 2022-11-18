FROM ubuntu:latest
RUN ufw allow OpenSSH && ufw enable && apt update && apt -y install apache2 && ufw allow 'Apache'
WORKDIR /var/www/fotografobrasileiroemamsterdam
COPY . .
RUN systemctl enable apache2
EXPOSE 80
