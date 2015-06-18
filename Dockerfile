FROM openshift3_beta/nodejs-010-rhel7

ADD src/ /src
WORKDIR /src

RUN yum install npm --enablerepo=epel

EXPOSE 80

CMD ["node", "index.js"]
