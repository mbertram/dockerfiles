FROM centos:centos6

ENV JAVA_VERSION 7u79
ENV JAVA_BUILD b15
ENV JAVA_DIR /opt/jre1.7.0_79

RUN yum -y update; yum clean all
RUN yum -y install epel-release tar wget; yum clean all

WORKDIR /tmp

RUN \
  echo "Installing Java" && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-${JAVA_BUILD}/jre-${JAVA_VERSION}-linux-x64.tar.gz" && \
  tar xzf jre-${JAVA_VERSION}-linux-x64.tar.gz -C /opt

RUN echo "Cleaning up" && \
  rm /tmp/jre-${JAVA_VERSION}-linux-x64.tar.gz

ENV JAVA_HOME ${JAVA_DIR}
ENV PATH ${PATH}:${JAVA_HOME}/bin
