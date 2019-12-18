FROM openjdk:8-jre-alpine
ENV APP_ROOT /app
RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}
COPY target/*.jar ${APP_ROOT}/run.jar
EXPOSE 5000
ENTRYPOINT ["java","-Dspring.profiles.active=prod", "-jar", "run.jar"]