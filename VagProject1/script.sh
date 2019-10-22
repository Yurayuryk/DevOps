
     cd /etc/yum.repos.d
     echo '[nginx]' >> nginx.repo
     echo 'name=nginx repo' >> nginx.repo
     echo 'baseurl=http://nginx.org/packages/mainline/centos/7/$basearch/' >> nginx.repo
     echo 'gpgcheck=0' >> nginx.repo
     echo 'enabled=1' >> nginx.repo
     sudo yum -y update
     sudo yum -y install epel-release
     sudo yum -y install nginx
     sudo systemctl enable nginx
     sudo systemctl start nginx
     sudo systemctl status nginx

	
