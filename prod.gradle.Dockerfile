FROM gradle:8.5.0-jdk21
WORKDIR /app
RUN chown -R gradle:gradle /app
USER gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN gradle build
RUN java -Djarmode=layertools -jar build/libs/spring-boot-docker-1.0.0.jar extract
  
FROM eclipse-temurin:21
RUN useradd app-user
USER app-user
WORKDIR /app
COPY --from=builder app/dependencies/ ./
COPY --from=builder app/spring-boot-loader/ ./
COPY --from=builder app/snapshot-dependencies/ ./
COPY --from=builder app/application/ ./
ENTRYPOINT ["java", "org.springframework.boot.loader.launch.JarLauncher"]