FROM arm64v8/ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends gnupg2 ca-certificates

COPY jetson.key /tmp/jetson.key
RUN apt-key add /tmp/jetson.key
RUN echo "deb https://repo.download.nvidia.com/jetson/common r32.4 main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    cuda-libraries-10-2 \
    cuda-libraries-dev-10-2 \
    cuda-minimal-build-10-2 \
    cuda-command-line-tools-10-2 \
    cuda-nvtx-10-2 \
    cuda-cudart-10-2 \
    cuda-cudart-dev-10-2 \
    cuda-license-10-2 \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/local/cuda-10.2 /usr/local/cuda

RUN echo "/usr/lib/aarch64-linux-gnu/tegra" >> /etc/ld.so.conf.d/nvidia-tegra.conf && \
    echo "/usr/lib/aarch64-linux-gnu/tegra-egl" >> /etc/ld.so.conf.d/nvidia-tegra.conf && \
    echo "/usr/local/cuda/targets/aarch64-linux/lib" >> /etc/ld.so.conf.d/nvidia.conf

ENV PATH /usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/cuda/targets/aarch64-linux/lib:${LD_LIBRARY_PATH}

RUN ldconfig

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES all
