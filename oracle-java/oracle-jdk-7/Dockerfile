FROM centos:centos6

ENV JAVA_VERSION 7u79
ENV JAVA_BUILD b15
ENV JAVA_DIR /opt/jdk1.7.0_79

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install which make rpmdevtools git; yum clean all

WORKDIR /tmp

RUN \
  echo "Installing Java" && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-${JAVA_BUILD}/jdk-${JAVA_VERSION}-linux-x64.rpm" && \
  rpm -i jdk-${JAVA_VERSION}-linux-x64.rpm

RUN \
	git clone https://github.com/keystep/virtual-java-rpm.git && \
	cd virtual-java-rpm && \
	./build && \
	rpm -i dist/virtual-java-*.rpm

RUN echo "Cleaning up" && \
  rm -f jdk-${JAVA_VERSION}-linux-x64.rpm && \
  rm -rf /tmp/virtual-java-rpm && \
  yum -y remove which rpmdevtools git && \
  yum clean all

ENV JAVA_HOME ${JAVA_DIR}
ENV PATH ${PATH}:${JAVA_HOME}/bin
