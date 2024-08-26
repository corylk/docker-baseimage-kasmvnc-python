FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntunoble

# environment settings
ENV \
       TITLE="KasmVNC" \
       CUSTOM_PORT="8080" \
       HOME="/config" \
       NO_DECOR=1 \
       PIP_BREAK_SYSTEM_PACKAGES=1 \
       QTWEBENGINE_DISABLE_SANDBOX="1"

# install system dependencies
RUN apt-get update
RUN apt-get install -y \
       gcc \
       cmake \
       git \
       libnss3 \
       libopengl0 \
       libxkbcommon-x11-0 \
       libxcb-cursor0 \
       libxcb-icccm4 \
       libxcb-image0 \
       libxcb-keysyms1 \
       libxcb-randr0 \
       libxcb-render-util0 \
       libxcb-xinerama0 \
       python3 \
       python3-xdg \
       python3-pip \
       python3-dev
