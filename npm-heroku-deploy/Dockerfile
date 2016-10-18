FROM ubuntu

RUN yum -y install epel-release tar wget; yum clean all

#Install heroku

RUN yum -y install ruby sudo which
RUN  wget -qO- https://toolbelt.heroku.com/install.sh | sh
ENV PATH /usr/local/heroku/bin:$PATH

#Install NVM and node version 4

ENV NODE_VERSION 4.6
ENV NVM_DIR $HOME/.nvm

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

