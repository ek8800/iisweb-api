FROM eclipse-temurin:17-jdk-focal

ADD webAPI-0.0.1-SNAPSHOT.jar webAPI-0.0.1-SNAPSHOT.jar

ENV TZ=America/New_York
#ENV TZ=EST
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8080
ENTRYPOINT ["java", "-jar",  "webAPI-0.0.1-SNAPSHOT.jar"] 
#CMD ["iisurl=https://app-35724574-22ce-49ad-8842-9f24263ba57d.cleverapps.io", "dbloadbalanceflag", "php_4_mysqlflag", "mydebugtestflag", "logRemoteDBflag"] 
CMD ["iisurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "directmysqlflag", "mydebugtestflag", "logRemoteDBflag"] 
