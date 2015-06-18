FROM openshift3_beta/nodejs-010-rhel7

ADD src/ /src
WORKDIR /src

USER root

RUN yum install -y --nogpgcheck npm

EXPOSE 80

CMD ["node", "index.js"]
