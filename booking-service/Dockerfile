FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /workspace
COPY movie-booking-commons/pom.xml movie-booking-commons/pom.xml
COPY movie-booking-commons/src movie-booking-commons/src
RUN mvn -B -f movie-booking-commons/pom.xml install -DskipTests

COPY booking-service/pom.xml booking-service/pom.xml
COPY booking-service/src booking-service/src
RUN mvn -B -f booking-service/pom.xml package -DskipTests

FROM eclipse-temurin:21-jre-jammy
COPY --from=build /workspace/booking-service/target/booking-service-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 9191
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
