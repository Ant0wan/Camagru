FROM rust:1 as builder
WORKDIR /app
COPY . .
RUN cargo install --path .


FROM debian:buster-slim as runner
COPY --from=builder /usr/local/cargo/bin/rust-rocket-app /usr/local/bin/rust-rocket-app
ENV ROCKET_ADDRESS=0.0.0.0
EXPOSE 8000
CMD ["rust-rocket-app"]




#FROM rust:1.43 as builder
#
#RUN USER=root cargo new --bin rust-docker-web
#WORKDIR ./rust-docker-web
#COPY ./Cargo.toml ./Cargo.toml
#RUN cargo build --release
#RUN rm src/*.rs
#
#ADD . ./
#
#RUN rm ./target/release/deps/rust_docker_web*
#RUN cargo build --release
#
#
#FROM debian:buster-slim
#ARG APP=/usr/src/app
#
#RUN apt-get update \
#    && apt-get install -y ca-certificates tzdata \
#    && rm -rf /var/lib/apt/lists/*
#
#EXPOSE 8000
#
#ENV TZ=Etc/UTC \
#    APP_USER=appuser
#
#RUN groupadd $APP_USER \
#    && useradd -g $APP_USER $APP_USER \
#    && mkdir -p ${APP}
#
#COPY --from=builder /rust-docker-web/target/release/rust-docker-web ${APP}/rust-docker-web
#
#RUN chown -R $APP_USER:$APP_USER ${APP}
#
#USER $APP_USER
#WORKDIR ${APP}
#
#CMD ["./rust-docker-web"]