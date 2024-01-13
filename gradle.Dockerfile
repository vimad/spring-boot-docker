FROM gradle:8.5.0-jdk21  
#https://github.com/keeganwitt/docker-gradle/blob/792a35389f800e589fbfe50d96c38ac5b21eaf34/jdk21/Dockerfile
WORKDIR /app
RUN chown -R gradle:gradle /app
USER gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN gradle build
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "build/libs/spring-boot-docker-1.0.0.jar"]
