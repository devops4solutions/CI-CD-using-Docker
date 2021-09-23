FROM tomcat:latest

LABEL maintainer="Nidhi Gupta"

ADD ./target/LoginWebApp-1.war /usr/local/tomcat/webapps/

EXPOSE 80


CMD ["catalina.sh", "run"]
