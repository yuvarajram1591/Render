#FROM openjdk:11-jdk
#VOLUME /tmp
#COPY build/libs/*.jar spring-main.jar
#
#EXPOSE 8080
##COPY --chown=node:node ./
#ENTRYPOINT ["java","-jar","/spring-main.jar"]

#FROM gradle:7.1.0-jdk11 AS build
#COPY . .
#RUN ./gradlew clean build -x test
#
#FROM openjdk:11-jdk-slim-sid
#COPY build/libs/*.jar spring-main.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","spring-main.jar"]

FROM gradle:7.1.0-jdk11 AS build
COPY . .
RUN ./gradlew bootJar --no-daemon

FROM openjdk:11-jdk-slim
EXPOSE 8080
COPY build/libs/*.jar springsan.jar
ENTRYPOINT ["java","-jar","springsan.jar"]
