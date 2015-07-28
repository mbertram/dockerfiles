FROM centos:centos6

ENV JAVA_VERSION 8u45
ENV JAVA_BUILD b14
ENV JAVA_DIR /opt/jre1.8.0_45

RUN yum -y update; yum clean all
RUN yum -y install epel-release tar wget; yum clean all

WORKDIR /tmp

RUN \
  echo "Installing Java" && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-${JAVA_BUILD}/jre-${JAVA_VERSION}-linux-x64.rpm" && \
  rpm -i jre-${JAVA_VERSION}-linux-x64.rpm

RUN echo "Cleaning up" && \
  rm /tmp/jre-${JAVA_VERSION}-linux-x64.rpm

ENV JAVA_HOME /usr/java/default
