FROM tomcat:9.0-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

# Copy các JSP ngoài thư mục web
COPY ./index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp
COPY ./cart.jsp /usr/local/tomcat/webapps/ROOT/cart.jsp
COPY ./checkout.jsp /usr/local/tomcat/webapps/ROOT/checkout.jsp
COPY ./main.css /usr/local/tomcat/webapps/ROOT/main.css

# Copy thư mục web (WEB-INF, META-INF, styles, ...)
COPY ./web /usr/local/tomcat/webapps/ROOT
COPY ./styles /usr/local/tomcat/webapps/ROOT/styles

EXPOSE 8080
CMD ["catalina.sh", "run"]
