FROM java:openjdk-8
MAINTAINER Philipp Naderer

ENV DEBIAN_FRONTEND noninteractive
ADD context  /opt/context/

RUN apt-get update && apt-get install -y \
    jsvc

CMD ["sh", "/opt/context/test-package.sh"]