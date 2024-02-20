FROM tomcat:8.0
COPY ./target/bostondataengineer.war /usr/local/tomcat/webapps
EXPOSE 8080
