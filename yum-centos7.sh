#!/bin/sh
###http://elrepo.org
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
###https://rpms.remirepo.net/
rpm --import https://rpms.remirepo.net/RPM-GPG-KEY-remi
rpm -Uvh https://rpms.remirepo.net/enterprise/remi-release-7.rpm
###https://mariadb.orgr
rpm -Uvh https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
cat >> /etc/yum.repos.d/mariadb.repo << 'EOF'
# MariaDB 10.2 CentOS repository list
# http://downloads.mariadb.org/mariadb/repositories/
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.2/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOF
