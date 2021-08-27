FROM tomcat:latest

LABEL maintainer="Nidhi Gupta"

ADD ./target/LoginWebApp-1.war /usr/local/tomcat/webapps/

EXPOSE 8080

sudo setfacl --modify user:$USER:rw /var/run/docker.sock

CMD ["catalina.sh", "run"]
