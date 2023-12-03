#!/bin/bash

export OSVENDOR=$(rpm -qi basesystem  | grep Vendor | awk -F : '{print $NF}' | sed -e 's/^ //')

##install pre-requisites
yum install -y yum-utils

case $OSVENDOR in
  CentOS)
    yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
  ;;
  "Amazon Linux")
    yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
  ;;
  *)
    echo "OS not Supported"
    exit 1
esac
##install terraform package
yum -y install terraform