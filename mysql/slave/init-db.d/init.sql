CHANGE MASTER TO MASTER_HOST ='mysql_master', MASTER_PORT =3306, MASTER_USER ='repl', MASTER_PASSWORD ='123456', MASTER_LOG_FILE ='master-bin.000001', MASTER_LOG_POS =0;
GRANT USAGE ON *.* TO 'monitor'@'%'
IDENTIFIED BY 'monitor'; -- monitor user for proxysql
FLUSH PRIVILEGES;

-- By default, MySQL sandbox will set read_only = 0.
SET GLOBAL READ_ONLY = 1;