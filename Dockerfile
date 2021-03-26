FROM maven:3.6.0-jdk-11-slim AS build
WORKDIR /home/app
COPY pom.xml .
COPY src src
ENV MAVEN_CONFIG=''
RUN mvn package

FROM tomcat:latest

LABEL maintainer="Nidhi Gupta"

COPY --from=build /home/app/target/LoginWebApp-1.war /usr/local/tomcat/webapps/LoginWebApp-1.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

