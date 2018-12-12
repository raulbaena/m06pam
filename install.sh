#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
#  - crear usuaris locals
# -------------------------------------
useradd -g users  exam01
useradd -g users  exam02
useradd -g users  exam03

echo "exam01" | passwd --stdin exam01
echo "exam02" | passwd --stdin exam02
echo "exam03" | passwd --stdin exam03

cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/system-auth  /etc/pam.d/system-auth
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml

