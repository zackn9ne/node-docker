FROM centos:7  
RUN curl -sL https://rpm.nodesource.com/setup | bash - \
  && mkdir -p /src
RUN yum install -y nodejs  

WORKDIR /src
ADD src/package.json /src/
RUN npm install
ADD src/* /src/
EXPOSE 8080  
CMD ["node", "app.js"]
