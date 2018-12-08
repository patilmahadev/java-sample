FROM ubuntu:14.04

RUN apt-get update && apt-get install default-jdk wget tar -y && wget http://mirrors.wuchna.com/apachemirror/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz && tar -xf apache-tomcat-7.0.92.tar.gz 

COPY sample.war apache-tomcat-7.0.92/webapps/

EXPOSE 8080

WORKDIR apache-tomcat-7.0.92/bin/

CMD ["sh","catalina.sh", "run"]
