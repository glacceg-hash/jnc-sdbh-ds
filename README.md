
FROM ghcr.io/m1k1o/neko/google-chrome:latest

ENV NEKO_SCREEN=1280x720@30
ENV NEKO_PASSWORD=neko
ENV NEKO_PASSWORD_ADMIN=admin

# Railway pasa el puerto via $PORT, neko debe escuchar ahi
ENV NEKO_BIND=:8080

# Sin EPR (no UDP en Railway)
ENV NEKO_EPR=52000-52001

# ICE lite + proxy mode para Railway
ENV NEKO_ICELITE=true
ENV NEKO_PROXY=true
ENV NEKO_IMPLICIT_CONTROL=true

# STUN servers publicos
ENV NEKO_ICESERVERS=stun:stun.l.google.com:19302,stun:stun1.l.google.com:19302

EXPOSE 8080
