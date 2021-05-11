FROM tensorflow/tensorflow:2.4.1-gpu
RUN apt-get update
RUN apt-get install -y zsh tmux wget git libsndfile1
RUN apt-get install -y python3.8 python3.8-pip
RUN pip3 install ipython && \
    pip install git+https://github.com/ENCCS/TensorFlowTTS.git@disable-preprocessing
RUN mkdir /workspace
WORKDIR /workspace
