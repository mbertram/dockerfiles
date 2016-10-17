FROM centos

RUN yum -y update; yum clean all
RUN yum -y install epel-release tar wget; yum clean all

#Install heroku

RUN yum -y install ruby sudo which
RUN  wget -qO- https://toolbelt.heroku.com/install.sh | sh
ENV PATH /usr/local/heroku/bin:$PATH

#Install NVM and node version 4

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
ENV NVM_DIR /root/.nvm
RUN source "$NVM_DIR/nvm.sh"
RUN nvm install v4



