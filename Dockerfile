# Versio: 0.0.1
# @edt M06 2018-2019
# m06pam
# -------------------------------------
FROM fedora:27
LABEL author="@edt ASIX M06-ASO"
LABEL description="host PAM 2018-2019"
RUN dnf -y install procps passwd openldap-clients nss-pam-ldapd pam_mount vim
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]
