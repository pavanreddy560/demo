

# we will use openjdk with alpine as it is a very small linux distro
FROM openjdk:11-jdk-alpine
# copy the packaged jar file into our docker image
COPY **/*.jar app.jar
# set the startup command to execute the jar
CMD ["java", "-jar", "/app.jar"]