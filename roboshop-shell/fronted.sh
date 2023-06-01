echo -e "\e[33mInstalling Nginx server\e[0m"
yum install nginx -y &>>/tmp/roboshop.log 

echo -e "\e[33mRemoving old App content \e[0m" 
rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log 

echo -e "\e[33mDownloading Fronted content\e[0m"]
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &>>/tmp/roboshop.log 


echo -e "\e[33mExtract Fronted content\e[0m"
cd /usr/share/nginx/html &>>/tmp/roboshop.log  
unzip /tmp/frontend.zip &>>/tmp/roboshop.log

echo -e "\e[33mUpdate Fronted Configuration\e[0m"
cp /home/centos/roboshop.conf /etc/nginx/default.d/roboshop.conf &>>/tmp/roboshop.log

echo -e "\e[33mStarting Nginx server\e[0m"
systemctl enable nginx &>>/tmp/roboshop.log  
systemctl restart nginx &>>/tmp/roboshop.log 




