echo -e "\e[33m Install python \e[0m"
yum install python36 gcc python3-devel -y  &>>/tmp/rpboshop.log


echo -e "\e[33m Add Application User \e[0m"
useradd roboshop &>>/tmp/rpboshop.log

echo -e "\e[33mCreate Application Directory \e[0m"
rm -rf /app &>>/tmp/rpboshop.log
mkdir /app 

echo -e "\e[33mDownload Application Content \e[0m"
curl -L -o /tmp/payment.zip https://roboshop-artifacts.s3.amazonaws.com/payment.zip  &>>/tmp/rpboshop.log 
cd /app 

echo -e "\e[33m Extract Application Content \e[0m"
unzip /tmp/payment.zip  &>>/tmp/rpboshop.log

echo -e "\e[33m Install Application Dependencies \e[0m"
cd /app 
pip3.6 install -r requirements.txt &>>/tmp/rpboshop.log

echo -e "\e[33m Setup SystemD File \e[0m"
cp /root/learn-shell/roboshop-shell/payment.service /etc/systemd/system/payment.service  &>>/tmp/roboshop.log

echo -e "\e[33m Start Payment Service \e[0m"
systemctl daemon-reload &>>/tmp/rpboshop.log
systemctl enable payment  &>>/tmp/rpboshop.log
systemctl restart payment &>>/tmp/rpboshop.log