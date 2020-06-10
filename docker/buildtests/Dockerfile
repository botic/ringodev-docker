FROM debian:stable
MAINTAINER Philipp Naderer-Puiu

ENV DEBIAN_FRONTEND noninteractive
ADD context  /opt/context/

RUN apt-get update && apt-get install -y software-properties-common wget gnupg
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - \
    && add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/

RUN apt-get update && apt-get install -y \
    adoptopenjdk-8-hotspot \
    jsvc

CMD ["sh", "/opt/context/test-package.sh"]