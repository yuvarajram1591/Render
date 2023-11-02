FROM ubuntu:latest
LABEL authors="test"
COPY --from=build /libs/spring-main-0.0.1-SNAPSHOT-plain.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-main.jar"]
