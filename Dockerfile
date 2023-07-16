# Use a base image with the JDK and JRE installed
FROM adoptopenjdk:17-jre-hotspot

# Set the working directory
WORKDIR /app

# Copy the JAR file from the previous build step
COPY build/libs/*.jar /app/app.jar

# Expose the application port (if needed)
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]
