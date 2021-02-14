FROM rust:1.38-slim AS build
LABEL maintainer="Michele Bologna <mb@michelebologna.net>"
RUN cargo install ripgrep

FROM debian:stretch-slim
VOLUME ["/data"]
WORKDIR /data
COPY --from=build /usr/local/cargo/bin/rg /usr/local/bin/rg

ENTRYPOINT ["rg"]
CMD ["/data"]
