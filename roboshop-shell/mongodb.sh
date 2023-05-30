echo -e "\e[33mCopy mongodb Repo file \e[0m"
cp mongodb.repo /etc/yum.repos.d/mongo.repo
echo -e "\e[33mInstalling mongodb service\e[0m"
yum install mongodb-org -y 
## Modify the config file
echo -e "\e[33mStart monodb service\e[0m"
systemctl enable mongod 
systemctl restart mongod


