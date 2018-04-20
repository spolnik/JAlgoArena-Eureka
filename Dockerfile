FROM openjdk:8

WORKDIR /app
ADD build/libs/jalgoarena-eureka-*.jar /app/

EXPOSE 5000

CMD java -Dserver.port=5000 -jar /app/jalgoarena-eureka-*.jar