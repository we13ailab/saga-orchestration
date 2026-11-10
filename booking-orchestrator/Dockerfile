FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /workspace
COPY movie-booking-commons/pom.xml movie-booking-commons/pom.xml
COPY movie-booking-commons/src movie-booking-commons/src
RUN mvn -B -f movie-booking-commons/pom.xml install -DskipTests

COPY booking-orchestrator/pom.xml booking-orchestrator/pom.xml
COPY booking-orchestrator/src booking-orchestrator/src
RUN mvn -B -f booking-orchestrator/pom.xml package -DskipTests

FROM eclipse-temurin:21-jre-jammy
COPY --from=build /workspace/booking-orchestrator/target/booking-orchestrator-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8181
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
