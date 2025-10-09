# Use Ubuntu as the base image for the container.
FROM ubuntu:latest

# In the Ubuntu container, install the forensics tools we need.
RUN apt-get update && apt-get install -y binutils exiftool binwalk unzip

# The directory inside the container we want to work in
WORKDIR /forensics-challenge

# Copy all the files/code from the repo into the container
COPY . .

# Not strictly necessary since the Docker run command also says this (starting the container interactively with bash).
CMD ["/bin/bash"]
