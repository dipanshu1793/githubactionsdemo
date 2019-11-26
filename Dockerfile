COPY pom.xml /githubactionsdemo/
COPY src /githubactionsdemo/src/
WORKDIR /githubactionsdemo/
RUN mvn package
FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=MAVEN_BUILD /githubactionsdemo/target/cicd-0.0.1-SNAPSHOT.jar /app/
ENTRYPOINT ["java", "-jar", "cicd-0.0.1-SNAPSHOT.jar"]
