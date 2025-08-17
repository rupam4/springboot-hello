# Use a Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR into the image
COPY target/*.jar app.jar

# Expose the port Spring Boot uses
EXPOSE 8081
	
# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
