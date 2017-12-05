FROM centos:centos7

MAINTAINER Kawhii Carl (huang.wenbin@foxmail.com)
ENV PATH=$PATH:$JRE_HOME/bin

RUN apt-get update
RUN apt-get install -y maven

RUN yum -y install wget tar unzip git \
    && yum -y clean all

# Download Azul Java, verify the hash, and install \
RUN set -x; \
    java_version=8.0.112; \
    zulu_version=8.19.0.1; \
    java_hash=3f95d82bf8ece272497ae2d3c5b56c3b; \

    cd / \
    && wget http://cdn.azul.com/zulu/bin/zulu$zulu_version-jdk$java_version-linux_x64.tar.gz \
    && echo "$java_hash  zulu$zulu_version-jdk$java_version-linux_x64.tar.gz" | md5sum -c - \
    && tar -zxvf zulu$zulu_version-jdk$java_version-linux_x64.tar.gz -C /opt \
    && rm zulu$zulu_version-jdk$java_version-linux_x64.tar.gz \
    && ln -s /opt/zulu$zulu_version-jdk$java_version-linux_x64/jre/ /opt/jre-home;

RUN cd / \
	&& wget http://www.azulsystems.com/sites/default/files/images/ZuluJCEPolicies.zip \
    && unzip ZuluJCEPolicies.zip \
    && mv -f ZuluJCEPolicies/*.jar /opt/jre-home/lib/security \
    && rm ZuluJCEPolicies.zip;

EXPOSE 8888 8443

ENV JAVA_HOME /opt/jre-home
ENV PATH $PATH:$JAVA_HOME/bin:.

ADD . /usr/local/service
WORKDIR /usr/local/service
RUN mvn install
RUN java -jar sso-config/target/ sso-config.jar &

CMD ["java","-jar","sso-server/target/cas.war"]