FROM tomcat:latest

LABEL maintainer="devops"

COPY /target/LoginWebApp-1.war /usr/local/tomcat/webapps/

