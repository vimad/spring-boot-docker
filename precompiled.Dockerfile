FROM eclipse-temurin:21
RUN mkdir /app
WORKDIR /app
COPY docker-file-example-1.0.0.jar docker-file-example-1.0.0.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "docker-file-example-1.0.0.jar"]
