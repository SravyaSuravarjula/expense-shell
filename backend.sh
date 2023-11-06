dnf module disable nodejs -y
dnf module enable nodejs:18 -y

dnf install nodejs -y

cp backend.service /etc/systemd/system/backend.service

useradd expense

mkdir /app

curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/backend.zip
cd /app
unzip /tmp/backend.zip

cd /app
npm install


systemctl daemon-reload


dnf install mysql -y

mysql -h <mysql-dev.mydevops08.online> -uroot -pSaipandu09# < /app/schema/backend.sql

systemctl enable backend
systemctl start backend
systemctl restart backend