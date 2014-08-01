FROM plux9/python34
MAINTAINER plux9
RUN /bin/bash -lc "pip install pyramid"

WORKDIR /app
# clone 
ADD setup.sh /app/
RUN git clone https://github.com/plux9/box.git


WORKDIR /app/box
RUN sh /app/setup.sh
ENTRYPOINT /bin/bash -lc "pserve development.ini"
