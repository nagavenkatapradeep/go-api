## Installing MySQL
sudo wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
sudo yum localinstall mysql57-community-release-el7-11.noarch.rpm
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
sudo yum update
sudo yum install mysql-community-server
systemctl enable mysqld
systemctl start mysqld
systemctl status mysqld
cat /var/log/mysqld.log |grep "A temp"
sudo mysql_secure_installation