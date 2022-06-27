#!bin/bash

#mysql
#create user 'root'@'%' identified by '123';
#grant all privileges on *.* to 'root'@'%';
#if [[ -e /var/lib/mysql/mysql/user.frm ]]; then
#rm /var/lib/mysql/mysql/user.frm \
#    && rm /var/lib/mysql/mysql/user.MYI \
#    && rm /var/lib/mysql/mysql/user.MYD
#cp /mysqldata /var/lib/mysql/mysql
#chown mysql:mysql -R /var/lib/mysql/mysql
#fi