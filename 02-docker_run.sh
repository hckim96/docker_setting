DOCKER_USER='hckim96'
CONTAINER_NAME='hckimGPU2'
#NV_GPU=0 nvidia-docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/j/workspace:/home/jd/workspace -e DISPLAY=$DISPLAY -p 8888:8888 -p 9998:9998 --name py3tf241 cu11_nn8_1804 bash
# docker run --gpus all -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/${USER}/workspace:/home/${DOCKER_USER}/workspace -e DISPLAY=$DISPLAY -p 8888:8888 -p 9998:9998 --shm-size=2G --name py3tf241 cu11_nn8_1804 bash
# docker run --gpus all -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/${USER}/workspace:/home/${DOCKER_USER}/workspace -e DISPLAY=$DISPLAY -p 8888:8888 -p 9998:9998 --shm-size=2G --name py3tf241 cu10_nn8_1804 bash
# docker run --gpus all -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/${USER}/workspace:/home/${DOCKER_USER}/workspace -e DISPLAY=$DISPLAY -p 8887:8888 -p 9997:9998 --shm-size=2G --name py3tf291 cu11-4_nn8_2004 bash
# docker run -it --runtime nvidia --network host -v /tmp/.X11-unix:/tmp/.X11-unix -v -v /home/${USER}/workspace:/home/${DOCKER_USER}/workspace -e DISPLAY=$DISPLAY -p 8888:8888 -p 9998:9998 --shm-size=2G --name py3tf291 l4t_tf_291 bash


# docker run --gpus all -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -p 8889:8890 -p 9999:10000 --name ${CONTAINER_NAME} ubuntu2004 bash
# docker run --gpus all -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -p 8886:8887 -p 9996:9997 --privileged --name ${CONTAINER_NAME} ubuntu2004 bash

docker run --gpus all -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/${USER}/workspace:/home/${DOCKER_USER}/workspace -e DISPLAY=$DISPLAY -p 8887:8888 -p 9997:9998 --shm-size=2G --name ${CONTAINER_NAME} cu10-2_nn8_1804 bash
