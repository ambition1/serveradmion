FROM java:8
EXPOSE 8080

VOLUME /tmp
ADD adminserver-1.0.0.jar /adminserver.jar
RUN bash -c 'touch /adminserver.jar'
ENTRYPOINT ["java","-jar","adminserver.jar"]