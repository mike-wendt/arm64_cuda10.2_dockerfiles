FROM arm64v8/ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends gnupg2 ca-certificates

COPY jetson.key /tmp/jetson.key
RUN apt-key add /tmp/jetson.key
RUN echo "deb https://repo.download.nvidia.com/jetson/common r32.4 main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    cuda-libraries-10-2 \
    cuda-nvtx-10-2 \
    cuda-cudart-10-2 \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/local/cuda-10.2 /usr/local/cuda
