FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=./target/test-project-0.1.0.jar
EXPOSE 8080/tcp
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
