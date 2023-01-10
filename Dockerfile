FROM tomcat:9.0.70-jdk11-temurin-jammy

EXPOSE 8080
COPY ROOT.war /usr/local/tomcat/webapps/