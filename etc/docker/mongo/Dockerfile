
FROM mongo

MAINTAINER luiz@quelves.com


RUN
    echo "net:" >> /etc/mongod.conf && \
    echo "  port: 27017" >> /etc/mongod.conf && \
    echo "  bindIp: 0.0.0.0" >> /etc/mongod.conf && \
    echo "security:" > /etc/mongod.conf && \
    echo "  authorization: 'enabled'" >> /etc/mongod.conf








