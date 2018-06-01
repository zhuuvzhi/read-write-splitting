CREATE USER 'repl'@'%' IDENTIFIED BY '123456';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';
GRANT USAGE ON *.* TO 'monitor'@'%' IDENTIFIED BY 'monitor'; -- monitor user for proxysql
FLUSH PRIVILEGES;