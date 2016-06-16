FROM java:openjdk-8
MAINTAINER Philipp Naderer

ENV DEBIAN_FRONTEND noninteractive
ADD context  /opt/context/

RUN apt-get update && apt-get install -y \
    git \
    ant \
    build-essential \
    dpkg-dev \
    debhelper \
    cdbs \
    jsvc

CMD ["sh", "/opt/context/build-package.sh"]