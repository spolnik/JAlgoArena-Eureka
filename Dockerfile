FROM openjdk:8

MAINTAINER Jacek Spolnik <jacek.spolnik@gmail.com>

WORKDIR /app
ADD build/libs/jalgoarena-eureka-*.jar /app/

ENTRYPOINT ["java", "-jar", "/app/jalgoarena-eureka-*.jar"]
EXPOSE 5000
