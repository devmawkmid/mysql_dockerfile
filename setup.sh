echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
apk update && apk add mariadb supervisor telegraf mariadb-client openrc

# openrc for use service cmd
openrc &> /dev/null
# required to run services with service cmd
touch /run/openrc/softlevel