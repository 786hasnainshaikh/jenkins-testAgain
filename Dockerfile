FROM tomcat:9.0-jdk8

# Remove default webapps (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to Tomcat webapps folder
COPY target/jenkins.war /usr/local/tomcat/webapps/jenkins.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
