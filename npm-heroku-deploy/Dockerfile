FROM alpine

RUN apk update
RUN apk add --update bash
RUN apk add tar
RUN apk add wget
RUN apk add sudo
RUN apk add which
RUN apk add ruby
RUN apk add --update ca-certificates

RUN  wget -qO- https://toolbelt.heroku.com/install.sh | sh

ENV PATH /usr/local/heroku/bin:$PATH
ENV NVM_DIR /.nvm

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash \
   && . /.nvm/nvm.sh \
   && nvm install 4.6 \
   && nvm alias default 4.6 \
   && nvm use default

RUN rm -rf /var/cache/apk/*
