FROM ghcr.io/m1k1o/neko/google-chrome:latest

ENV NEKO_SCREEN=1280x720@30
ENV NEKO_PASSWORD=neko
ENV NEKO_PASSWORD_ADMIN=admin
ENV NEKO_BIND=:8080

# TCP only - sin UDP, funciona en Railway
ENV NEKO_TCPMUX=8080
ENV NEKO_ICELITE=true
ENV NEKO_IMPLICIT_CONTROL=true

# Proxy mode - necesario cuando esta detras de un reverse proxy (Railway)
ENV NEKO_PROXY=true

# STUN publico de Google
ENV NEKO_ICESERVERS=stun:stun.l.google.com:19302

EXPOSE 8080
