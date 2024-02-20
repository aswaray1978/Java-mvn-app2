FROM tomcat:8.0
COPY ./target/bostondataengineer-mvn-app.war /usr/local/tomcat/webapps
EXPOSE 8080
