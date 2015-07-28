FROM centos:centos6

ENV JAVA_VERSION 8u45
ENV JAVA_BUILD b14
ENV JAVA_DIR /opt/jdk1.8.0_45

RUN yum -y update; yum clean all
RUN yum -y install epel-release tar wget; yum clean all

WORKDIR /tmp

RUN \
  echo "Installing Java" && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-${JAVA_BUILD}/jdk-${JAVA_VERSION}-linux-x64.rpm" && \
  rpm -i jdk-${JAVA_VERSION}-linux-x64.rpm

RUN echo "Cleaning up" && \
  rm /tmp/jdk-${JAVA_VERSION}-linux-x64.rpm

ENV JAVA_HOME /usr/java/default
