From amazoncorretto:17-alpine
LABEL author="sachin sharma"
WORKDIR /app

ADD  target/spring-petclinic-4.0.0-SNAPSHOT.jar  spring-petclinic-4.0.0-SNAPSHOT.jar
EXPOSE 8080/tcp
CMD ["java" , "-jar" , "/spring-petclinic-4.0.0-SNAPSHOT.jar"]
