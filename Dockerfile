FROM docker.io/python:3.10-slim
LABEL authors="CristopherH95"
ARG GH_AUTH_TOKEN

WORKDIR /usr/src/app

RUN apt update && apt install -y git cmake gh

COPY requirements-concrete.txt ./requirements.txt
RUN pip install --upgrade pip
RUN git config --global url.https://$GH_AUTH_TOKEN@github.com/.insteadOf https://github.com/
RUN pip install --no-cache-dir -r requirements.txt
COPY jupyter-note-book-entrypoint.sh ./

ENTRYPOINT ["bash", "./jupyter-note-book-entrypoint.sh"]