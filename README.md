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
docker build -f prod.maven.Dockerfile -t spring-multistage-gradle .

docker run -p 8080:8080 -it spring-multistage-gradle

docker image inspect spring-multistage-gradle
```
```
Image Size - 220Mb
```