# Use a lightweight JDK base image
FROM eclipse-temurin:17-jdk-alpine

# Create a volume pointing to /tmp
VOLUME /tmp

# Argument that matches the final jar built by Maven
ARG JAR_FILE=target/*.jar

# Copy the jar to the container
COPY ${JAR_FILE} app.jar

# Run the app
ENTRYPOINT ["java","-jar","/app.jar"]
