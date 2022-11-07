#FROM openjdk:8-jdk
# From OCIR
FROM iad.ocir.io/apackrsct01/openjdk:8-jdk
RUN addgroup --system spring && adduser --system spring -ingroup spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]