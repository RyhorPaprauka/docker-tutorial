FROM openjdk:8-jre-alpine
ADD target/*.jar run.jar
ENTRYPOINT ["java","-Dspring.profiles.active=prod", "-jar", "run.jar"]
EXPOSE 8080