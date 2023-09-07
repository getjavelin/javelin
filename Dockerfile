# Build stage
FROM golang:1.20.6-bullseye AS BUILD
LABEL authors="sharathrajasekar"

RUN mkdir /app
WORKDIR /app
COPY . .
RUN go mod download && make build

# Runtime stage
FROM debian:bullseye-slim AS RUNTIME
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

# Set up the working directory
WORKDIR /app

# Copy binary from build stage
COPY --from=BUILD /app/out/bin/javelin /app/

# Copy configuration files
COPY ./deploy/config/dev-config.yaml /app/config/dev-config.yaml
COPY ./deploy/config/prod-config.yaml /app/config/prod-config.yaml
COPY ./deploy/config/routes.yaml /app/config/routes.yaml
COPY ./deploy/config/providers.yaml /app/config/providers.yaml
COPY ./deploy/config/prometheus.yml /app/deploy/prometheus.yml

# Copy versatile entry script
COPY ./deploy/config/javelin-entry.sh /app/javelin-entry.sh

# Set javelin entry script as default entrypoint
ENTRYPOINT ["./javelin-entry.sh"]
