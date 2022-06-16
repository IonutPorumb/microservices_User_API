FROM openjdk:11.0.15
LABEL maintainer="ionut.porumb0203@gmail.com"
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/codestate-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} codestate.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/codestate.jar"]
