FROM grycap/darknet-v3
LABEL author="Vicente Rodriguez Benitez <vrodben1@i3m.upv.es>"


WORKDIR /app

COPY requirements/requirements.txt .


RUN apt-get update && apt-get install -y  python3   python3-pip

RUN pip --no-cache-dir install -r requirements.txt && \
    rm -rf /root/.cache/pip/* && \
    rm -rf /tmp/*


COPY . .
#WORKDIR /app

#COPY requirements/requirements.txt .
#RUN apt-get update
#RUN apt-get install -y pip
#&& pip install --upgrade -r requirements.txt --no-cache-dir && \
#   rm requirements.txt

#RUN apt-get update
#RUN pip install paho-mqtt
#COPY app ./

#USER app

#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "4"]

#apt-get -y install gcc
#RUN addgroup --gid 1001 --system app && \
  #  adduser --no-create-home --shell /bin/false --disabled-password --uid 1001 --system --group app && \
