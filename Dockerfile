# Start with a base image containing Java run – time
FROM openjdk:11-jdk
MAINTAINER vishnuvenugopalp1@gmail.com
COPY target/cloudBuildHelloWorld-1.0.0.jar /var/myapp/hello-world.jar
WORKDIR /var/myapp/
EXPOSE 9090
ENTRYPOINT ["java", "-jar","hello-world.jar"]
