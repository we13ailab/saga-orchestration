FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /workspace
COPY movie-booking-commons/pom.xml movie-booking-commons/pom.xml
COPY movie-booking-commons/src movie-booking-commons/src
RUN mvn -B -f movie-booking-commons/pom.xml install -DskipTests

COPY seat-inventory-service/pom.xml seat-inventory-service/pom.xml
COPY seat-inventory-service/src seat-inventory-service/src
RUN mvn -B -f seat-inventory-service/pom.xml package -DskipTests

FROM eclipse-temurin:21-jre-jammy
COPY --from=build /workspace/seat-inventory-service/target/seat-inventory-service-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 9292
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
