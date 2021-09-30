FROM alpine:latest
RUN apk add --no-cache wget \
&& apk add default-jre \
&& java -version \
&& mkdir /opt/tomcat
WORKDIR /home
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.53/bin/apache-tomcat-9.0.53.tar.gz \
&& tar xvzf apache-tomcat-9.0.53.tar.gz --strip-components 1 --directory /opt/tomcat \
&& /opt/tomcat/bin/catalina.sh version \
&& rm -rf apache-tomcat-9.0.53.tar.gz \
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]