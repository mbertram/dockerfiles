FROM mbertram/jre-9

EXPOSE 61612 61613 61616 8161
ENV ACTIVE_MQ_VERSION 5.15.2

RUN \
  wget -qO - http://apache.osuosl.org/activemq/${ACTIVE_MQ_VERSION}/apache-activemq-${ACTIVE_MQ_VERSION}-bin.tar.gz | tar xz -C /opt

WORKDIR /opt/apache-activemq-${ACTIVE_MQ_VERSION}

RUN \
  mv ./conf/activemq.xml ./conf/activemq.xml.orig && \
  awk '/.*stomp.*/{print "            <transportConnector name=\"stompssl\" uri=\"stomp+nio+ssl://0.0.0.0:61612?transport.enabledCipherSuites=SSL_RSA_WITH_RC4_128_SHA,SSL_DH_anon_WITH_3DES_EDE_CBC_SHA\" />"}1' ./conf/activemq.xml.orig >> ./conf/activemq.xml

CMD java -Xmx1G -Djava.util.logging.config.file=logging.properties -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote -Djava.io.tmpdir=./tmp -Dactivemq.classpath=./conf -Dactivemq.home=. -Dactivemq.base=. -Dactivemq.conf=./conf -Dactivemq.data=./data -jar ./bin/activemq.jar start
