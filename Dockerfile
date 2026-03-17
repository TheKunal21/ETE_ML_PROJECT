FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

# Install awscli properly
RUN apt-get update -y && \
    apt-get install -y awscli && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]