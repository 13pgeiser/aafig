FROM python:3.7-slim
RUN python3 -m pip install --no-cache-dir markdown2
ARG USER_NAME=host_user
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $USER_NAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $USER_NAME
USER $USER_NAME

