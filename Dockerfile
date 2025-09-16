FROM tomcat:9.0-jdk11

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./web /usr/local/tomcat/webapps/ROOT
COPY ./WEB-INF /usr/local/tomcat/webapps/ROOT/WEB-INF
COPY ./META-INF /usr/local/tomcat/webapps/ROOT/META-INF

EXPOSE 8080
CMD ["catalina.sh", "run"]
