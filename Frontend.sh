echo -e "\e[31m>>> Install nginx <<<\e[0m"
yum install nginx -y

systemctl enable nginx
systemctl start nginx
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
cp roboshop.conf /etc/nginx/default.d/roboshop.conf

echo -e "\e[34m<<< Restart Nginx Service >>>\e[0m"
Restart Nginx Service