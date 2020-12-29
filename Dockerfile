FROM openjdk:8
MAINTAINER huangyr
LABEL name="docker-demo" version="1.0" author="huangyr"
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]