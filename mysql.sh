dnf module disable mysql -y

dnf install mysql-community-server -y

cp mys.conf /etc/yum.repos.d/mysql.repo/mys.conf

systemctl enable mysqld
systemctl start mysqld

mysql_secure_installation --set-root-pass ExpenseApp@1

mysql -uroot -pExpenseApp@1