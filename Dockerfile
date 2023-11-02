FROM openjdk:11-jdk
VOLUME /tmp
COPY build/libs/*.jar spring-main.jar

EXPOSE 8080
#COPY --chown=node:node ./
ENTRYPOINT ["java","-jar","/spring-main.jar"]
