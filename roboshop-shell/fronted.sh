source common.sh

echo -e "${color} Installing Nginx server ${nocolor}"
yum install nginx -y &>>/tmp/roboshop.log 
stat_check $?

echo -e "${color} Removing old App content ${nocolor}" 
rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log 
stat_check $?

echo -e "${color} Downloading Fronted content ${nocolor}"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip  &>>/tmp/roboshop.log 
stat_check $?

echo -e "${color} Extract Fronted content ${nocolor}"
cd /usr/share/nginx/html   
unzip /tmp/frontend.zip &>>/tmp/roboshop.log
stat_check $?

echo -e "${color} Update Fronted Configuration ${nocolor}"
cp /home/centos/learn-shell/roboshop-shell/roboshop.conf  /etc/nginx/default.d/roboshop.conf &>>/tmp/roboshop.log
stat_check $?

echo -e "${color} Starting Nginx server ${nocolor}"
systemctl enable nginx &>>/tmp/roboshop.log  
systemctl restart nginx &>>/tmp/roboshop.log 
stat_check $?
