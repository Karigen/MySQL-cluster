show variables like 'server_id';
drop USER reader IF EXISTS;
CREATE USER reader IDENTIFIED BY 'reader';
GRANT REPLICATION SLAVE ON *.* to 'reader'@'%';
ALTER USER 'reader'@'%' IDENTIFIED WITH mysql_native_password BY 'reader';
FLUSH PRIVILEGES;
show master status;