echo -e "\e[33mCopy MongoDB Repo file\e[0m"
CP Mongodb.Repo /etc/yum.Repos.d /Mongodb.Repo
echo -e "\e[33mCopy MongoDB Server\e[0m"
yum install mongodb-org -y 
## Modify the config file
echo -e "\e[33mStart MongoDB Server\e[0m"
systemctl enable mongod 
systemctl restart mongod




