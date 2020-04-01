FROM openjdk:11-jdk
VOLUME /tmp
COPY ./build/libs/demo-1.0-RELEASE.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]