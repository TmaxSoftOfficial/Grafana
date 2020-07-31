FROM centos:7
# version 20.0

#0) Set SOURCE_PATH and GRAFANA_PATH/VERSION
ENV SOURCE_PATH /usr/local/src
ENV GRAFANA_FOLDER grafana-7.0.5-1.x86_64
ENV GRAFANA_VERSION grafana-7.0.5-1

#1) Update and Install necessary packages through yum in CentOS
RUN yum -y update; yum clean all
RUN yum -y install systemd; yum clean all; \
(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

#2) Copy grafana install rpm file & LICENSE into container path
COPY $GRAFANA_FOLDER.rpm $SOURCE_PATH
COPY LICENSE $SOURCE_PATH

#3) Change working directory
WORKDIR $SOURCE_PATH

#4) Install grafana from copy rpm file
RUN yum install $GRAFANA_FOLDER.rpm -y

#5) Connect host Volumn and Docker Volumn 
VOLUME ["/sys/fs/cgroup"]

#6) grafana expose port (default : 3000)
EXPOSE 3000

#7) start grafana
RUN systemctl daemon-reload;systemctl start grafana-server;systemctl enable grafana-server

CMD ["/usr/sbin/init"]
