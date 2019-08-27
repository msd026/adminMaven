FROM openjdk
MAINTAINER msd026
COPY admin-0.0.1-SNAPSHOT.jar admin.jar
EXPOSE 8081
CMD ["java","-jar","admin.jar"]
