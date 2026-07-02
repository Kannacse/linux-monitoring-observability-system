FROM ubuntu:24.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

WORKDIR /app

RUN apt-get update && \
    apt-get install -y \
    bash \
    procps \
    curl \
    cron \
    tzdata && \
    rm -rf /var/lib/apt/lists/*

COPY monitor /app/monitor
COPY analyzer /app/analyzer
COPY healer /app/healer
COPY controller /app/controller
COPY config /app/config
COPY utils /app/utils
COPY scheduler /app/scheduler
COPY metrics /app/metrics
COPY scripts /app/scripts
COPY observability /app/observability

COPY start-project.sh /app/
COPY docker/entrypoint.sh /app/

RUN chmod +x \
    /app/start-project.sh \
    /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
