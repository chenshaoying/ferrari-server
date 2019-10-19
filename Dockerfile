# ubuntu with JDK 8
# Author   chensy

# build a new image with basic  ubuntu
FROM registry.cn-hangzhou.aliyuncs.com/chensy/ubuntu-jdk8:v1
# who is the author
MAINTAINER chensy

ADD target/ferrari-server-0.0.1.jar /appdata/ferrari-server.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/appdata/ferrari-server.jar"]