FROM debian:stable-slim
COPY ./ /build/
VOLUME /build
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt install /build/medshakeehr.deb -y
EXPOSE 80
EXPOSE 443
