FROM rust:1.40 as builder
WORKDIR /usr/src/nether-helsinki
COPY . .
RUN cargo install --path .

FROM debian:buster-slim
RUN rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/nether-helsinki /usr/local/bin/nether-helsinki
CMD ["nether-helsinki"]