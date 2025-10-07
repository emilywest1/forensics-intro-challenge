FROM ubuntu:latest

RUN apt-get update && apt-get install -y binutils exiftool binwalk unzip

WORKDIR /forensics-challenge
COPY . .

CMD ["/bin/bash"]