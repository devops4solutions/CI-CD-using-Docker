FROM tomcat:latest

LABEL maintainer="Nidhi Gupta"

ADD ./target/LoginWebApp-1.war /usr/local/tomcat/webapps/

EXPOSE 8080

docker build -t myProject .

CMD ["catalina.sh", "run"]
