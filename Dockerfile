FROM openjdk:11

#Create directory in container image for code
RUN mkdir -p /source/app

# Copy all app code in above directory ie. inside container
COPY . /source/app

#set that directory as working directory
WORKDIR /source/app

# Run below command to install all dependancies from pom.xml . It will create target folder
#RUN mvn clean package

#Add all files in target folder in app.jar
COPY target/demo-0.0.1-SNAPSHOT.jar /

EXPOSE 8080

# Set entry point 
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"] 