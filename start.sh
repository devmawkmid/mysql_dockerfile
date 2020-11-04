if [ ! -f "/var/lib/mysql/ib_buffer_pool" ];
then
    /etc/init.d/mariadb setup &> /dev/null
    service mariadb restart &> null
    mysql --user=root < req.sql
    mysql --user=root wordpress < wordpress.sql
    service mariadb stop
fi
sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
/usr/bin/supervisord
