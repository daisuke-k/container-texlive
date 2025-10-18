FROM debian:trixie-slim

ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="Asia/Tokyo"

RUN apt update && apt install texlive latexmk texlive-lang-japanese texlive-extra-utils texlive-fonts-extra texlive-latex-extra -y
RUN apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /work
