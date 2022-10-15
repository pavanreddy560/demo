

# we will use openjdk 11 with alpine as it is a very small linux distro
FROM openjdk:11-jre-alpine3.9
# copy the packaged jar file into our docker image
COPY **/*.jar app.jar
# set the startup command to execute the jar
CMD ["java", "-jar", "/app.jar"]