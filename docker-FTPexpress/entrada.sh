#!/bin/sh

# GENERAR PASSWORD PARA FULANITO

PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-8};echo;)
echo "Generated password for user 'files': ${PASSWORD}"
echo "fulanito:${PASSWORD}" |/usr/sbin/chpasswd
chown fulanito:fulanito /home/fulanito/ -R

# ARRANCAMOS EL SERVIDOR

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
