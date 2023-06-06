echo -e "\e[33m Configuring NodeJS Repos\e[0m"
curl -sL https://rpm.nodesource.com/setup_lts.x | bash  

echo -e "\e[33m Install NodeJS \e[0m"
yum install nodejs -y

echo -e "\e[33m Add Application User\e[0m"
useradd roboshop

echo -e "\e[33m Create Application Directory\e[0m"
rm -rf /app
mkdir /app 

echo -e "\e[33m Download Application Content\e[0m"
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip 
cd /app 

echo -e "\e[33m Extract Application Content\e[0m"
unzip /tmp/catalogue.zip
cd /app

echo -e "\e[33m Install NodeJS Dependencies\e[0m"
npm install

echo -e "\e[33m Setup SystemD Service \e[0m"
cp catalogue.service /etc/systemd/system/catalogue.service

echo -e "\e[33m Start Catalogue Service\e[0m"
systemctl daemon-reload
systemctl enable cart 
systemctl restart cart

echo -e "\e[33m Copy MongoDB Repo file\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongo.repo 

echo -e "\e[33m Install MOngoDB Client\e[0m"
yum install mongodb-org-shell -y

echo -e "\e[33m Load Schema \e[0m"
mongo --host mongodb-dev.devopsb72.site </app/schema/catalogue.js
