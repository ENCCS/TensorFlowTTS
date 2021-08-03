FROM tensorflow/tensorflow:2.4.1-gpu
RUN apt-get update
RUN apt-get install -y zsh tmux wget git libsndfile1
RUN apt-get install -y python3.7 python3-pip && python3.7 -m pip install --upgrade pip
RUN python3.7 -m pip install ipython && \
    python3.7 -m pip install -v -v -v git+https://github.com/ENCCS/TensorFlowTTS.git@disable-preprocessing
RUN mkdir /workspace
WORKDIR /workspace
