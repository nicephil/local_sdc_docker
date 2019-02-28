#!/bin/sh

yum  -y install wget
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo_bak
cd /etc/yum.repos.d/
wget http://mirrors.163.com/.help/CentOS7-Base-163.repo -O CentOS-Base.repo
cd -
yum makecache
yum -y update
yum -y install unzip which libselinux-utils openssl tcp_wrappers-devel numactl-libs systemd-sysv sudo initscripts
rm -rf local_sdc;mkdir -pv local_sdc;cd local_sdc
cp -rvf ../oak_install_localsdc_3.22_20190108101359.zip .
unzip oak_install_localsdc_3.22_20190108101359.zip
./setup.sh <<EOF
Y
EOF
cd -
su oakridge
/oakmanager/deploy/deployer.py upgrade /repos/dockers/local_sdc/oak_upgrade_localsdc_3.34_20190117142933.zip
