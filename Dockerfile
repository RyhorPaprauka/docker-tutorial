FROM openjdk:8-jdk-alpine
ENV APP_ROOT /app
RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}
RUN mvn clean package
COPY target/docker-test-0.0.1-SNAPSHOT.jar ${APP_ROOT}/run.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=prod", "-jar", "run.jar"]