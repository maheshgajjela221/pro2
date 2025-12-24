FROM eclipse-temurin:11-jre-jammy

WORKDIR /app

COPY target/banking-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]
