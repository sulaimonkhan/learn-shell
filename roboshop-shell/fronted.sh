echo -e "\e[33mInstalling Nginx server\e[0m"
yum install nginx -y  

echo -e "\e[33mRemoving old App content \e[0m" 
rm -rf /usr/share/nginx/html/*

echo -e "\e[33mDownloading Fronted content\e[0m"]
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 

echo -e "\e[33mExtract Fronted content\e[0m"]
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

## we need to copy config files s               

echo -e "\e[33mStarting Nginx server\e[0m"
systemctl enable nginx 
systemctl restart nginx




