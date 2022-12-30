FROM tomcat:latest

LABEL maintainer="devops"

ADD ./target/LoginWebApp-1.war /usr/local/tomcat/webapps/

