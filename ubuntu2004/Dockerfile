### Base Image 지정
FROM ubuntu:20.04

ARG ARG_USER_ID="hckim96"
ARG ARG_PASSWD="1234"

### TimeZone 환경 변수 지정
ENV TZ Asia/Seoul

### TimeZone 설정    
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
# RUN apt-get upgrade -y
RUN apt-get install -y apt-utils 
RUN apt-get -y install sudo
RUN apt-get install -y vim git x11-apps
# RUN apt-get install -y python3 python3-dev python3-setuptools gcc libtinfo-dev zlib1g-dev build-essential cmake libedit-dev libxml2-dev
# RUN apt-get install -y llvm  
# RUN apt-get install -y libgl1-mesa-glx 

RUN echo "root:"${ARG_USER_ID} | chpasswd
RUN useradd -ms /bin/bash ${ARG_USER_ID} && echo ${ARG_USER_ID}":"${ARG_PASSWD} | chpasswd && adduser ${ARG_USER_ID} sudo

# RUN mkdir /home/${ARG_USER_ID}/workspace

USER ${ARG_USER_ID}

# WORKDIR /home/${ARG_USER_ID}

# RUN git clone --recursive https://github.com/apache/tvm tvm

# WORKDIR /home/${ARG_USER_ID}/tvm

# RUN mkdir build
# RUN cp cmake/config.cmake build

# RUN pip3 install --user tornado psutil 'xgboost<1.6.0' cloudpickle

# WORKDIR /home/${ARG_USER_ID}/tvm/build
# RUN cmake ..
# RUN make -j4
