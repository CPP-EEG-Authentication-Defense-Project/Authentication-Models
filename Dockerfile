FROM docker.io/python:3.10-slim
LABEL authors="CristopherH95"
ARG GH_AUTH_TOKEN

WORKDIR /usr/src/app

RUN apt update && apt install -y git cmake gh

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN git config --global url.https://$GH_AUTH_TOKEN@github.com/.insteadOf https://github.com/
RUN pip install --no-cache-dir -r requirements.txt
#RUN echo $GH_AUTH_TOKEN > gh_token.txt && \
#    gh auth login --with-token < gh_token.txt && \
#    pip install --no-cache-dir -r requirements.txt && \
#    rm gh_token.txt
COPY jupyter-note-book-entrypoint.sh ./

ENTRYPOINT ["source", "./jupyter-note-book-entrypoint.sh"]