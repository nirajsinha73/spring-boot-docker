# Use a base image with JDK installed
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven project file(s) to the container
COPY pom.xml .

# Download and cache Maven dependencies
RUN ["mvn", "dependency:go-offline"]

# Copy the entire project to the container
COPY . .

# Build the Java project using Maven
RUN ["mvn", "package"]

# Specify the command to run your Java application
CMD ["java", "-jar", "target/demo-docker.jar"]
