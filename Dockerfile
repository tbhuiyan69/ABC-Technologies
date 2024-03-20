# Use Tomcat image as base
FROM tomcat:latest

# Copy the app.war file into the webapps directory of Tomcat
COPY target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ABCtechnologies-1.0.war

# Expose port 8080 (default Tomcat port)
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]                         
