FROM python:3.12-slim

ENV TZ=Asia/Shanghai
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    tzdata build-essential curl git fonts-noto-cjk\
 && ln -sf /usr/share/zoneinfo/$TZ /etc/localtime \
 && echo $TZ > /etc/timezone \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt
RUN pip install --upgrade pip && pip install -r /tmp/requirements.txt -i https://mirrors.aliyun.com/pypi/simple/

COPY config/jupyter_notebook_config.py /root/.jupyter/

WORKDIR /workspace

CMD ["jupyter", "notebook", "--config=/root/.jupyter/jupyter_notebook_config.py"]
