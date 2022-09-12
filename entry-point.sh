#!/bin/bash
java -Xms64m -Xmx128m -Ddatasource.dialect="MYSQL" -Ddatasource.url="jdbc:mysql://database:3306/lavagna?useUnicode=true&characterEncoding=utf-8&useSSL=false" -Ddatasource.username="root" -Ddatasource.password="password" -Dspring.profiles.active="$dev" -jar target/lavagna-jetty-console.war --headless
