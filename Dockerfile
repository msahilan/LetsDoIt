FROM openjdk:11-jdk
RUN groupadd -r dev -g 1001 && useradd -r dev -g dev -u 1001
COPY ./build/libs/demo-1.0-RELEASE.jar app.jar
EXPOSE 8080
USER dev
ENTRYPOINT ["java","-jar","app.jar"]