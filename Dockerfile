FROM openjdk:8-jdk-alpine
ARG JAR_FILE=/build/libs/hello-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} myspring.jar
ENTRYPOINT ["java","-jar","/myspring.jar"]