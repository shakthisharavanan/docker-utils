FROM nvcr.io/nvidia/tensorrt:22.08-py3

LABEL description="Tensorrt 8.4 docker image"
LABEL maintainer="shakthi.94@icloud.com"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y sudo python3-dev python3-pip

COPY ./docker_login.sh /docker_login.sh

RUN chmod +x /docker_login.sh

ENTRYPOINT ["/docker_login.sh"]