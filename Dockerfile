FROM maven:3.5-jdk-8-alpine

RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN mvn install

FROM openjdk:8
WORKDIR /app
COPY /app/target/springbootWebsocket.jar /app
ENTRYPOINT ["java","-jar","springbootWebsocket.jar"]
