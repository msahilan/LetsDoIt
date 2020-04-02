FROM openjdk:11-jdk
RUN mkdir /app
RUN groupadd -r dev -g 1001 && useradd -r dev -s /bin/false -g dev -u 1001
WORKDIR /app
COPY ./build/libs/demo-1.0-RELEASE.jar /app/app.jar
EXPOSE 8080
RUN chown -R dev:dev /app
USER dev
ENTRYPOINT ["java","-jar","/app/app.jar"]