This contains source code associate with my Docker with Spring Boot blog series
- [Docker With Spring Boot: Part 1 — Create Images Using Docker File](https://medium.com/javarevisited/docker-with-spring-boot-part-1-create-images-using-docker-file-2a65b2a357ee)
- [Docker With Spring Boot: Part 2 — Create Images Using Build Tools](https://medium.com/javarevisited/docker-with-spring-boot-part-2-create-images-using-build-tools-644c67a864dd)
- [Docker With Spring Boot: Part 3 — Inspect Images](https://medium.com/javarevisited/docker-with-spring-boot-part-3-inspect-images-219adb8e07f2)

______
## Build image using precompiled jar
```
docker build -f precompiled.Dockerfile -t spring-precompiled .

docker run -p 8080:8080 -it spring-precompiled

docker image inspect spring-precompiled
```
```
Image Size - 454Mb
```

______
## Build image using maven
```
docker build -f maven.Dockerfile -t spring-maven .

docker run -p 8080:8080 -it spring-maven

docker image inspect spring-maven
```
```
Image Size - 619MB
```

______
## Build image using gradle
```
docker build -f gradle.Dockerfile -t spring-gradle .

docker run -p 8080:8080 -it spring-gradle

docker image inspect spring-gradle
```
```
Image Size - 844Mb
```

______
## Build image using multistage maven
```
docker build -f prod.maven.Dockerfile -t spring-multistage-maven .

docker run -p 8080:8080 -it spring-multistage-maven

docker image inspect spring-multistage-maven
```
```
Image Size - 220Mb
```

______
## Build image using multistage gradle
```
docker build -f prod.gradle.Dockerfile -t spring-multistage-gradle .

docker run -p 8080:8080 -it spring-multistage-gradle

docker image inspect spring-multistage-gradle
```
```
Image Size - 220Mb
```

______
## Build image using multistage maven native
```
docker build -f prod.maven.native.Dockerfile -t spring-multistage-maven-native .

docker run -p 8080:8080 -it spring-multistage-maven-native

docker image inspect spring-multistage-maven-native
```
```
Image Size - 189Mb
```

-----
## Build image using buildpacks
```
./mvnw spring-boot:build-image
./gradlew bootBuildImage --imageName=gradle-task-build
```
```
Image Size - 356Mb
```

---
## Build image using Jib
```
./mvnw compile jib:dockerBuild
docker run -p 8080:8080 -it jib-maven

./gradlew jibDockerBuild
docker run -p 8080:8080 -it jib-gradle
```
```
Image Size - 312MB
```

---
## Build image using fabric8 docker maven plugin
```
./mvnw docker:build
docker run -p 8080:8080 -it maven-fabric8
```
```
Image Size - 455MB
```

---
## Build image using gradle docker plugin
```
./gradlew dockerBuildImage
docker run -p 8080:8080 -it gradle-docker
```
```
Image Size - 455MB
```

