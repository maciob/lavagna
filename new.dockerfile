FROM maven:3.8.6-jdk-8
ENV DB_DIALECT MYSQL
ENV DB_URL jdbc:mysql://database:3306/lavagna?useUnicode=true&characterEncoding=utf-8&useSSL=false
ENV DB_USER root
ENV DB_PASS password
ENV SPRING_PROFILE dev
WORKDIR app
COPY . .
RUN chmod 755 entry-point.sh
RUN mvn verify 
ENTRYPOINT ["./entry-point.sh"]
