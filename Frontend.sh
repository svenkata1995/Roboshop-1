echo -e "\e[31m>>> Install nginx <<<\e[0m"
yum install nginx -y

echo -e "\e[32m>>> Start & Enable Nginx service <<<\e[0m"
systemctl enable nginx
systemctl start nginx
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

ech0 -e "\e[33m<<< Extract the frontend content >>>\e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
cp roboshop.conf /etc/nginx/default.d/roboshop.conf

echo -e "\e[34m<<< Restart Nginx Service >>>\e[0m"
Restart Nginx Service