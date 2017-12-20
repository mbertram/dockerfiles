FROM amazonlinux:2

ENV JAVA_VERSION 9.0.1
ENV JAVA_BUILD 11
ENV JAVA_RPM_FILE jdk-${JAVA_VERSION}_linux-x64_bin.rpm


RUN yum -y update; yum clean all
RUN yum -y install epel-release tar wget; yum clean all

WORKDIR /tmp

RUN \
  echo "Installing Java" && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}+${JAVA_BUILD}/${JAVA_RPM_FILE}" && \
  rpm -i ${JAVA_RPM_FILE}

RUN echo "Cleaning up" && \
  rm /tmp/${JAVA_RPM_FILE}

ENV JAVA_HOME /usr/java/default
