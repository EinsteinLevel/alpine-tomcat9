FROM alpine:latest
RUN apk add openjdk11-jre-headless
RUN apk add openjdk11 && java -version
RUN mkdir /opt/tomcat
RUN tar xvzf apache-tomcat-9.0.44.tar.gz --strip-components 1 --directory /opt/tomcat && /opt/tomcat/bin/catalina.sh version
CMD ["/opt/tomcat/bin/catalina.sh", "run"
