FROM maven:3.8-openjdk-11

ENV TZ=America/Fortaleza

COPY . /app
WORKDIR /app

RUN mvn clean install -DskipTests
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/target/pdv-api-0.0.1-SNAPSHOT.jar"]