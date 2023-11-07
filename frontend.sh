echo -e "\e[36m Installing Nginx \e[0m"
dnf install nginx
echo -e "\e[36m Copy expense Config \e[0m"
cp expense.conf /etc/nginx/default.d/expense.conf
echo -e "\e[36m Clean old Content \e[0m"
rm -rf /usr/share/nginx/html/*


echo -e "\e[36m Download frontend application code \e[0m"
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip
echo -e "\e[36m Extract Downloaded Application \e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
echo -e "\e[36m Starting Nginx \e[0m"
systemctl enable nginx
systemctl restart nginx

