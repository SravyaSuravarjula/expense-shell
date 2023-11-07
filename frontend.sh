dnf install nginx

rm -rf /usr/share/nginx/html/*

systemctl enable nginx
systemctl start nginx

cp expense1.conf /etc/nginx/default.d/expense1.conf



curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip

cd /usr/share/nginx/html
unzip /tmp/frontend.zip


systemctl restart nginx

