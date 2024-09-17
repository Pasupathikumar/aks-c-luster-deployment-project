# Use an official Java runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the WAR file into the container
COPY target/helloworld.war /app/helloworld.war

# Expose the port the app runs on
EXPOSE 8080

# Command to run the WAR file
CMD ["java", "-jar", "/app/helloworld.war"]
