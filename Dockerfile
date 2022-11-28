# For newer images see https://confluence.oci.oraclecorp.com/x/5-2FAg
FROM openjdk-8-jdk-alpine
RUN cd / && mkdir target && chmod 777 -R /target
COPY ./target/rest-service-001-snapshot .jar /target/
EXPOSE 3000
ENTRYPOINT ["java", ".jar", "/target/rest-service", ]