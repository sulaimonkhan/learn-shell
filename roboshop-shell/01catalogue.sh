source common.sh
component=catalogue


nodejs

echo -e "${color} Copy MongoDB Repo file ${nocolor}"
cp /root/learn-shell/roboshop-shell/mongodb.repo /etc/yum.repos.d/mongo.repo   &>>$log_file

echo -e "${color} Install MongoDB Client ${nocolor}" 
yum install mongodb-org-shell -y  &>>$log_file

echo -e "${color} Load Schema ${nocolor}"
mongo --host mongodb-dev.devopsb72.site <${app_path}/schema/$component.js  &>>$log_file