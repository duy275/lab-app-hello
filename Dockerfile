FROM eclipse-temurin:21-jre          # chỉ cần JRE để chạy, không cần Maven/JDK → image nhẹ
WORKDIR /app
COPY target/hello-*.jar app.jar      # jar do Maven build sẵn trong workspace
RUN useradd -r -u 10001 app
USER 10001                           # không chạy bằng root
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]