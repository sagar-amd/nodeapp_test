FROM centos

MAINTAINER sagarkrishna

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-8/v8.5.91/bin/apache-tomcat-8.5.91.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.91/* /opt/tomcat/.
#RUN apt-get install java
#RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
