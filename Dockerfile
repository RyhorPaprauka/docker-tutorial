FROM openjdk:8-jre-alpine
ADD target/*.jar run.jar
ENTRYPOINT ["java", "-jar", "run.jar"]
EXPOSE 80

#"-Dspring.profiles.active=prod",