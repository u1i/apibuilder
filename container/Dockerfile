FROM u1ih/nodejs-ubuntu:1
MAINTAINER uli.hitzel@gmail.com

EXPOSE 8080

RUN npm install -g @axway/api-builder
COPY new-project.sh /root
RUN chmod a+x /root/new-project.sh
RUN /root/new-project.sh
COPY run /usr/bin
RUN chmod a+x /usr/bin/run
