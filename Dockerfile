FROM --platform=linux/x86_64 maven:3.8.6-eclipse-temurin-11-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

FROM openjdk:11
COPY --from=MAVEN_TOOL_CHAIN /tmp/target/maven-docker-template-1.0.jar /myapp/
WORKDIR /myapp
CMD ["java", "-jar", "maven-docker-template-1.0.jar"]
