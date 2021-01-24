FROM rust:1.31

WORKDIR /usr/src/nether-helsinki
COPY . .

RUN cargo install --path .

CMD ["nether-helsinki"]