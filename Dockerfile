FROM centos:6
MAINTAINER Claas Rockmann-Buchterkirche <claas@rockbu.de>
EXPOSE 22
VOLUME /workdir
RUN rpm -Uvh "https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm"
RUN yum clean all
RUN yum -y update
RUN yum -y install openssh-server
CMD /bin/bash
