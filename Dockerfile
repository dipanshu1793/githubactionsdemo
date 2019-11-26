FROM openjdk:8-jre-alpine
COPY githubactionsdemo/target/cicd-0.0.1-SNAPSHOT.jar /springboot
ENTRYPOINT ["java", "-jar", "cicd-0.0.1-SNAPSHOT.jar"]
