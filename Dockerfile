# Use the official OpenJDK image as the base image
FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

# Copy the .jar file from your local machine to the container
# Make sure that the JAR_FILE is the correct path and name of your .jar file
COPY target/your-app-name.jar app.jar

# Run the application using the Java command
ENTRYPOINT ["java", "-jar", "app.jar"]

