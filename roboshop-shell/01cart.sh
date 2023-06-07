echo -e "\e[33m Configuring NodeJS Repos \e[0m"
curl -sL https://rpm.nodesource.com/setup_lts.x | bash

echo -e "\e[33m Install NodeJS \e[0m"
yum install nodejs -y

echo -e "\e[33m Add Application User \e[0m"
useradd roboshop

echo -e "\e[33m Create Application Directory \e[0m"
rm -rf /app
mkdir /app 

echo -e "\e[33m Download Application Content \e[0m"
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
cd /app

echo -e "\e[33m Extract Application Content \e[0m"
unzip /tmp/cart.zip
cd /app 

echo -e "\e[33m Install NodeJS Dependencies \e[0m"
npm install 

echo -e "\e[33m Setup SystemD Service \e[0m"
cp /root/learn-shell/roboshop-shell/cart.service /etc/systemd/system/cart.service

echo -e "\e[33m Start cart Service \e[0m"
systemctl daemon-reload
systemctl enable cart 
systemctl restart cart