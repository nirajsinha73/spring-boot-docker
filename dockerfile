FROM maven:3.6.3-jdk-8
RUN mvn clean install -Dmaven.test.skip=true
ADD target/demo-docker.jar demo-docker.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar" , "demo-docker.jar"]
