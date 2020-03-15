#!/bin/bash

mysql -u root  --execute="create database ofbiz character set utf8mb4 collate utf8mb4_general_ci;";
mysql -u root  --execute="create database ofbizolap character set utf8mb4 collate utf8mb4_general_ci;";
mysql -u root  --execute="create database ofbiztenant character set utf8mb4 collate utf8mb4_general_ci;";

mysql -u root  --execute="CREATE USER 'ofbiz'@'%' IDENTIFIED BY '{{password}}';"
mysql -u root  --execute="GRANT ALL PRIVILEGES ON *.* TO 'ofbiz'@'%';"

SET GLOBAL innodb_file_format_max=BARRACUDA;
SET GLOBAL innodb_file_per_table = "ON";
SET GLOBAL innodb_strict_mode = "ON";
set global innodb_file_format = BARRACUDA;
set global innodb_large_prefix = ON;

mysql ofbiz < /opt/ofbiz.sql;
mysql ofbizolap < /opt/ofbizolap.sql;
mysql ofbiztenant < /opt/ofbiztenant.sql;
