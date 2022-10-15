

# we will use openjdk with alpine as it is a very small linux distro
FROM openjdk:20-oraclelinux8
# copy the packaged jar file into our docker image
COPY **/*.jar app.jar
RUN mkdir destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add
# set the startup command to execute the jar
CMD ["java", "-jar", "/app.jar"]

