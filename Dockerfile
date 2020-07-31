

FROM openjdk:11-jdk
VOLUME /tmp
ADD target/cloudBuildHelloWorld-1.0.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]