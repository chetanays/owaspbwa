#!/bin/sh
owaspbwa-services-stop.sh
echo ".: Fixing Web Permissions :."
chown -R www-data:www-data /owaspbwa/owaspbwa-svn/var/www
chown -R www-data:www-data /owaspbwa/owaspbwa-svn/var/lib/awstats
echo ".: Fixing MySQL Permissions:."
chown -R mysql:mysql /owaspbwa/owaspbwa-svn/var/lib/mysql
#chmod 700 /owaspbwa/owaspbwa-svn/var/lib/mysql/main/
echo ".: Fixing PostgreSQL Permissions:."
chown -R postgres:postgres /owaspbwa/owaspbwa-svn/var/lib/postgresql
echo ".: Fixing Tomcat Permissions :."
chown -R tomcat6:tomcat6 /owaspbwa/owaspbwa-svn/var/lib/tomcat6
owaspbwa-services-start.sh