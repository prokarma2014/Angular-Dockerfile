FROM  pkrm2014/cricket-dockerized
MAINTAINER PROKARMA 


RUN apt-get update 
WORKDIR /usr/
RUN wget https://github.com/prokarma2014/AngularApplication/archive/master.zip
RUN unzip master.zip
RUN sudo apt-get update
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y npm
RUN sudo apt-get install -y openjdk-7-jdk
RUN sudo apt-get install -y git
RUN npm install -g bower
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN sudo npm install -g grunt-cli
WORKDIR /usr/AngularApplication-master/pocZip
RUN npm install
RUN sudo bower install -y --allow-root
ADD run.sh /run.sh
RUN chmod +x /*.sh
RUN mv /run.sh /usr/AngularApplication-master/pocZip/

