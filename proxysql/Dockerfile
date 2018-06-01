FROM centos:7

RUN echo $'[proxysql_repo] \n\
name = ProxySQL YUM repository \n\
baseurl = http://repo.proxysql.com/ProxySQL/proxysql-1.4.x/centos/7 \n\
gpgcheck = 1 \n\
gpgkey = http://repo.proxysql.com/ProxySQL/repo_pub_key' > /etc/yum.repos.d/proxysql.repo
RUN cat /etc/yum.repos.d/proxysql.repo

RUN yum install -y proxysql

RUN yum install -y mysql

VOLUME /var/lib/proxysql

ADD proxysql.cnf /etc/proxysql.cnf

ENTRYPOINT ["/usr/bin/proxysql", "--initial", "-f", "-c", "/etc/proxysql.cnf"]

EXPOSE 6032 6032

EXPOSE 6033 6033