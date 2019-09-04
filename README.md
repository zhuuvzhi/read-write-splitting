**基于https://github.com/sysown/proxysql 的Mysql读写分离方案**

**使用方法**
1. 执行 `build.sh`
2. 用客户端连接slave(port:3001)，执行 `start slave;show slave status;` 查看主从复制状态
3. 在slave执行`SELECT @@global.read_only`，如果为read_only=0，执行`set global read_only = 1;`
4. 用客户端连接proxsql(port:6033), 执行测试insert/select语句
5. docker进入镜像proxysql(容器外部无法直接登录admin账号)，输入`mysql -uadmin -padmin -P6032 -h127.0.0.1`，执行`select * from stats_mysql_query_digest;`，查看SQL语句的分发情况
