FROM eclipse-temurin:17-jdk-focal
ADD webAPI-0.0.1-SNAPSHOT.jar webAPI-0.0.1-SNAPSHOT.jar
ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
EXPOSE 8080
ENTRYPOINT ["java", "-jar",  "webAPI-0.0.1-SNAPSHOT.jar"] 
#CMD ["iisurl=https://webapp001-i451v4xv.b4a.run", "timerurl=https://webapp001-i451v4xv.b4a.run", "directpgsqlflag", "mydebugtestflag", "logRemoteDBflag"]
CMD ["iisurl=https://webapp001-i451v4xv.b4a.run", "timerurl=https://webapp001-i451v4xv.b4a.run", "directmysqlflag", "remoteapiip=http://40.233.84.176:8080", "mydebugtestflag", "logRemoteDBflag"]
