FROM centos:centos6  
RUN curl -sL https://rpm.nodesource.com/setup | bash -  
RUN yum install -y nodejs  
ADD src/* /src/

WORKDIR /src  
RUN npm install  
EXPOSE 8080  
CMD ["node", "app.js"]
