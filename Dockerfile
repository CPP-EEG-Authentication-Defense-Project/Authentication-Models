FROM docker.io/zamafhe/concrete-ml:v1.4.1
LABEL authors="CristopherH95"
ARG GH_AUTH_TOKEN

RUN apt-get install -y git

COPY requirements.txt ./requirements.txt
RUN git config --global url.https://$GH_AUTH_TOKEN@github.com/.insteadOf https://github.com/
RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash", "-i", "/app/entry_point.sh"]