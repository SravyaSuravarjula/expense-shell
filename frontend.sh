sudo dnf install nginx
cp expense1.conf /etc/nginx/default.d/expense1.conf
rm -rf /usr/share/nginx/html/*



curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip

cd /usr/share/nginx/html
unzip /tmp/frontend.zip

systemctl enable nginx

systemctl restart nginx

