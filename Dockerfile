FROM maven:3.9-eclipse-temurin-21 AS build

WORKDIR /app

ADD . /app

RUN mvn package -DskipTests


FROM amazoncorretto:17-alpine

LABEL author="sachin sharma"

WORKDIR /app

COPY --from=build /app/target/spring-petclinic-4.0.0-SNAPSHOT.jar /app/spring-petclinic-4.0.0-SNAPSHOT.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/spring-petclinic-4.0.0-SNAPSHOT.jar"]
