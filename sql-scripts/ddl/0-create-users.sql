--admin user
CREATE USER 'admin-user'@'%' IDENTIFIED BY '#######';
GRANT ALL PRIVILEGES ON *.* TO 'admin-user'@'%';
FLUSH PRIVILEGES;
--dev user
CREATE USER 'dev-user'@'%' IDENTIFIED BY '#######';
GRANT Delete ON `go-api-dev`.* TO 'dev-user'@'%';
GRANT Insert ON `go-api-dev`.* TO 'dev-user'@'%';
GRANT Select ON `go-api-dev`.* TO 'dev-user'@'%';
GRANT Update ON `go-api-dev`.* TO 'dev-user'@'%';
--qa user
CREATE USER 'qa-user'@'%' IDENTIFIED BY '#######';
GRANT Delete ON `go-api-qa`.* TO 'qa-user'@'%';
GRANT Insert ON `go-api-qa`.* TO 'qa-user'@'%';
GRANT Select ON `go-api-qa`.* TO 'qa-user'@'%';
GRANT Update ON `go-api-qa`.* TO 'qa-user'@'%';