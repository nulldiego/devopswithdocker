FROM ubuntu:16.04 

WORKDIR /scripts 
RUN apt-get update && apt-get install -y curl

COPY script.sh .
RUN chmod +x ./script.sh
CMD ./script.sh