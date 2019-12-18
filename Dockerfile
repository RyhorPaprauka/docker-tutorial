FROM openjdk:8-jre-alpine
ADD target/*.jar run.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "run.jar"]

#"-Dspring.profiles.active=prod",