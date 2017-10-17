FROM jetbrains/teamcity-agent
MAINTAINER Andrey Paslavsky

ENV HUGO_VERSION 0.30

RUN apt-get update \
 && apt-get install -y curl \
 && curl -fSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb" -o hugo.deb \
 && dpkg -i hugo.deb \
 && apt-get -f install \
 && apt-get clean