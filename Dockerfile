# Sử dụng image tomcat:10.0-jdk17-openjdk-slim làm base
FROM tomcat:10.0-jdk17-openjdk-slim

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào thư mục webapps của Tomcat
COPY target/demo-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]