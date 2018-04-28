FROM openjdk:8

MAINTAINER Jacek Spolnik <jacek.spolnik@gmail.com>

WORKDIR /app
ADD build/libs/jalgoarena-eureka-*.jar /app/

EXPOSE 5000
CMD java -jar /app/jalgoarena-eureka-*.jar
