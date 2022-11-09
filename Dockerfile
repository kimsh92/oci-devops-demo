#FROM openjdk:8-jdk
# From OCIR
FROM nrt.ocir.io/apackrsct01/openjdk:8-jdk
RUN addgroup --system spring && adduser --system spring -ingroup spring
USER spring:spring
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
