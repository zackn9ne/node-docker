# node-docker
a node docker, or a dock noder?

* `brew cask install boot2docker` to install docker
* `brew cask install dockertoolbox` to install tools
* `docker -v` to check you're good
* `boot2docker start` or `boot2docker init` if the former doesn't go anwhere. Pay close attention to the `EXPORT` statements and be sure to add those to your `.profile`
* clone the repo, this sets up a little node app with most importantly a `app.js` and an `package.json` and an `proper folder structure`
* double check your `Dockerfile` it should have all the lame junk you don't want to type into the command line every time in it :

```
FROM centos:centos6  
RUN curl -sL https://rpm.nodesource.com/setup | bash -  
RUN yum install -y nodejs  
ADD src/* /src/

WORKDIR /src  
RUN npm install  
EXPOSE 8080  
CMD ["node", "app.js"]
```
* build it `docker build -t node-test .` this looks at your `Dockerfile` aka  _instructions for menial tasks_ in the `project root` and makes happy [![IMAGE ALT TEXT](http://img.youtube.com/vi/isABpKDEsDw/0.jpg)](http://www.youtube.com/watch?v=isABpKDEsDw "Video Title")


* make sure your docker is known of `docker ps -a`
* run your docker `docker run -p 18080:8080 node-test`
* find your ip `echo $(boot2docker ip)`
* visit `http://$(boot2docker ip):18080`
* profit
