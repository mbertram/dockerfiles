FROM amazonlinux:2

ENV JAVA_VERSION 8u152
ENV JAVA_BUILD b16
ENV JAVA_RPM_FILE jre-${JAVA_VERSION}-linux-x64.rpm


RUN yum -y update; yum clean all
RUN yum -y install epel-release tar wget; yum clean all

WORKDIR /tmp

RUN \
  echo "Installing Java" && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-${JAVA_BUILD}/${JAVA_RPM_FILE}" && \
  rpm -i ${JAVA_RPM_FILE}

RUN echo "Cleaning up" && \
  rm /tmp/${JAVA_RPM_FILE}

ENV JAVA_HOME /usr/java/default
