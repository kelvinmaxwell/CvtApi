# Build stage
FROM maven:3.8.3-openjdk-17 AS build
LABEL COMPANY="Cvt"
LABEL MAINTAINER="kelvinmaxwell82@gmail.com"
LABEL APPLICATION="CvtApi"

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mvn clean package -DskipTests

# Final stage
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the JAR file from the build stage to the working directory
COPY --from=build /usr/src/app/target/cvt-springboot-images.jar /app/cvt.jar

#EXPOSE 9878/udp

EXPOSE 8081

# Set environment variable to disable APR
ENV JAVA_OPTS="-Dserver.tomcat.apr-lifecycle-listener.enabled=false"

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/cvt.jar"]
