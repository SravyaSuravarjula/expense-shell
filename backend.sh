dnf module disable nodejs -y
dnf module enable nodejs:18 -y

dnf install nodejs -y

cp backend1.service /etc/systemd/system/backend1.service

useradd expense

mkdir /app

curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/backend.zip
cd /app
unzip /tmp/backend.zip

cd /app
npm install





dnf install mysql -y

mysql -h <mysql-dev.mydevops08.online> -uroot -pSaipandu09# < /app/schema/backend.sql

systemctl daemon-reload
systemctl enable backend
systemctl start backend
