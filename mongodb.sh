cp mongo.repo /etc/yum.repos.d/mongo.repo
yum install mongodb-org -y
echo -e "\e[33m>>> start and enable MongoDB service >>>\e[0m"
systemctl enable mongod
systemctl start mongod
sed -i -e 's|127.0.0.1|0.0.0.0|'/etc/mongod.conf
systemctl restart mongod