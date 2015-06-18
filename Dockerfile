FROM openshift3_beta/nodejs-010-rhel7

ADD src/ /src
WORKDIR /src

USER root

RUN yum install -y npm --enablerepo=epel

EXPOSE 80

CMD ["node", "index.js"]
