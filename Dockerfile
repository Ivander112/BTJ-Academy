FROM ubuntu:18.04
LABEL Name="whoami"
LABEL Version="0.1.0"
RUN apt-get update
RUN apt-get install vim python -y
ENTRYPOINT ["/bin/bash"]