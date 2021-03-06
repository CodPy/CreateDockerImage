FROM python:3.9-slim
RUN apt update && \
apt install --no-install-recommends -y build-essential gcc && \
    apt clean && rm -rf /var/lib/apt/lists/*
RUN mkdir /App
COPY . /App
WORKDIR /App
RUN pip3 install --no-cache-dir -r requirements.txt
CMD [ "python", "./main.py" ]
EXPOSE 5000
