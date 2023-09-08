curl -sL https://rpm.nodesource.com/setup_lts.x | bash
dnf install nodejs -y
cp backend.conf /etc/systemd/system/backend.service/backend.conf
mkdir /app
curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/backend.zip
cd /app
unzip /tmp/backend.zip

systemctl daemon-reload
systemctl enable backend
systemctl start backend
dnf install mysql -y
mysql -h 172.31.31.227 -uroot -pExpenseApp@1 < /app/schema/backend.sql