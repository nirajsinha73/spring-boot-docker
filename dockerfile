# Use a base image with JDK installed
FROM maven:3.6.3-jdk-8

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven project file(s) to the container
COPY pom.xml .

# Copy the entire project to the container
COPY . .

# Build the Java project using Maven
RUN ["mvn", "package"]

# Specify the command to run your Java application
CMD ["java", "-jar", "target/demo-docker.jar"]
