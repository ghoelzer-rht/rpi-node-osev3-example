FROM openshift3_beta/nodejs-010-rhel7

ADD src/ /src
WORKDIR /src

RUN npm install

EXPOSE 80

CMD ["node", "index.js"]
