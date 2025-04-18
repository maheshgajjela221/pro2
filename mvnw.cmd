<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.example</groupId>
    <artifactId>banking</artifactId>
    <version>0.0.1-SNAPSHOT</version>
    <packaging>war</packaging> <!-- Specify WAR packaging -->

    <dependencies>
        <!-- Spring Boot Web Starter -->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
        </dependency>

        <!-- Spring Boot Tomcat Starter for WAR -->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-tomcat</artifactId>
            <scope>provided</scope> <!-- Provided by the server -->
        </dependency>

        <!-- Spring Boot Actuator (optional, for monitoring) -->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-actuator</artifactId>
        </dependency>

        <!-- Other dependencies (if any) can go here -->
    </dependencies>

    <build>
        <finalName>banking</finalName> <!-- The name of your generated .war file -->
        <plugins>
            <!-- Spring Boot Maven Plugin to repackage the application -->
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
                <version>2.7.4</version> <!-- Ensure compatibility with Spring Boot version -->
                <executions>
                    <execution>
                        <goals>
                            <goal>repackage</goal> <!-- This goal repackages the .war -->
                        </goals>
                    </execution>
                </executions>
            </plugin>
        </plugins>
    </build>

</project>
