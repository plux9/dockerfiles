FROM ubuntu
MAINTAINER plux9

# base update
RUN apt-get update
RUN apt-get -y upgrade

# get git
RUN apt-get -y install git

# setup pyenv

RUN apt-get -y install libreadline-dev libbz2-dev zlib1g-dev libssl-dev
RUN apt-get -y install sqlite3 libsqlite3-dev
RUN apt-get -y install curl
RUN apt-get -y install make

WORKDIR /app
ENV HOME /app
RUN git clone git://github.com/yyuu/pyenv.git .pyenv
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/bin:$PATH
RUN eval "$(pyenv init -)"
RUN ./.pyenv/bin/pyenv install 3.4.1
RUN pyenv global 3.4.1
