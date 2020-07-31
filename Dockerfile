
# Start with a base image containing Java run – time
FROM openjdk:11-jdk

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 80 available to the world outside
this container
EXPOSE 80

# The application’s jar file
ARG JAR_FILE=target/cloudBuildHelloWorld-1.0.0.jar

# Add the application’s jar to the container
ADD ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]