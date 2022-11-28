FROM openjdk:15
COPY ./target/pizzeria-0.0.1-SNAPSHOT.jar pizzeria-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","pizzeria-0.0.1-SNAPSHOT.jar"]