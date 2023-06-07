FROM tomcat:8.5.89-jdk17-temurin-focal

LABEL maintainer="devops"

COPY /target/LoginWebApp-1.war /usr/local/tomcat/webapps/

