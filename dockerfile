FROM tensorflow/tensorflow:2.3.1-gpu
RUN apt-get update
RUN apt-get install -y zsh tmux wget git libsndfile1
RUN pip install ipython && \
    pip install git+https://github.com/ENCCS/TensorFlowTTS.git@disable-preprocessing
RUN mkdir /workspace
WORKDIR /workspace
