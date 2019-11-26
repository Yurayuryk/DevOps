     sudo su
     cd /etc/yum.repos.d
     echo '[nginx]' >> nginx.repo
     echo 'name=nginx repo' >> nginx.repo
     echo 'baseurl=http://nginx.org/packages/mainline/centos/7/$basearch/' >> nginx.repo
     echo 'gpgcheck=0' >> nginx.repo
     echo 'enabled=1' >> nginx.repo
     yum -y update
     yum -y install epel-release
     yum -y install nginx
     systemctl enable nginx
     systemctl start nginx
     systemctl status nginx
     su vagrant
