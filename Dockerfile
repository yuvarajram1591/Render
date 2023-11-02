FROM ubuntu:latest
LABEL authors="test"
VOLUME /tmp
COPY build/libs/spring-main-0.0.1-SNAPSHOT-plain.jar spring-main.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-main.jar"]
