FROM openjdk:17
EXPOSE 8080
ADD target/discount-maximization.jar discount-maximization.jar
ENTRYPOINT ["java","-jar", "/discount-maximization.jar"]