# crack-tiny-mssqlserver
## 针对于docker 安装sql server 要求内存大于2g的用户 适用的脚本
在 https://github.com/xbo729/tiny_mssql_server 上做出了正确性修改 <br/>
参考了https://www.cnblogs.com/biaogejiushibiao/p/9280841.html <br/>
麦齐的Microsoft SQL Server on Linux破解 2G内存限制方法  <br/>
特别制作了Dockerfile 来破解docker 版本的sql server（要求内存大于2G要求）<br/>
步骤:<br/>
1. mkdir /usr/local/docker/linux-sqlserver2022 <br/>
2. docker build -t linux-sqlserver:2022 .   <br/>
3. docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=P@ssw0rd" -e "MSSQL_COLLATION=Chinese_PRC_CI_AS" -p 11433:1433 --name linux-sqlserver2022 --restart=always -v /usr/local/docker/linux-sqlserver2022:/var/opt/mssql -v /etc/localtime:/etc/localtime:ro -e TZ="Asia/Shanghai" -d linux-sqlserver:2022 <br/>

