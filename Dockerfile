FROM ubuntu:18.04
LABEL Name="whoami_ivan"
LABEL Version="0.1.0"
RUN apt-get update
RUN apt-get install vim python:3.8 -y
ENTRYPOINT ["/bin/bash"]
WORKDIR /app
COPY . /app
CMD ["python", "hallo_dunia.py"]