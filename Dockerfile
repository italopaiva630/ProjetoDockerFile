# Imagem base para o Spring Boot com Java 25

FROM eclipse-temurin:25

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo jar para o container
COPY target/exemplo-docker-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta 8080 (padrão do Spring Boot)
EXPOSE 8080

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
