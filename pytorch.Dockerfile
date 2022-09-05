FROM nvidia/cuda:11.1.1-cudnn8-devel-ubuntu20.04

LABEL description="Pytorch v1.8.2+cu111 docker image"
LABEL maintainer="shakthi.94@icloud.com"

RUN apt-get update -y

RUN apt-get install -y sudo python3-dev python3-pip

RUN pip3 install torch==1.8.2+cu111 torchvision==0.9.2+cu111 torchaudio==0.8.2 -f https://download.pytorch.org/whl/lts/1.8/torch_lts.html

COPY ./docker_login.sh /docker_login.sh

RUN chmod +x /docker_login.sh

ENTRYPOINT ["/docker_login.sh"]