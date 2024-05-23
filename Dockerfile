# Use an OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR file into the Docker image
COPY app.jar app.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8090

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
