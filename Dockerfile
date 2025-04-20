FROM eclipse-temurin:21.0.6_7-jdk

# Set working directory
WORKDIR /opt/Lavalink

# Copy Lavalink.jar
COPY Lavalink /opt/Lavalink

COPY entrypoint.sh /opt/Lavalink/entrypoint.sh
RUN chmod +x /opt/Lavalink/entrypoint.sh

VOLUME [ "/opt/Lavalink" ]

# Command to run Lavalink
CMD ["sh", "entrypoint.sh"]