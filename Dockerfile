FROM openjdk:8

WORKDIR /app
ADD build/libs/* /app/

EXPOSE 5000

CMD java -Dserver.port=5000 -jar /app/jalgoarena-eureka-*.jar