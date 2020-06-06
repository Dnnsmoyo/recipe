FROM ubuntu:18.04
ENTRYPOINT []
RUN apt-get update 
RUN apt-get install -y python3 
RUN apt-get install -y python3-pip 
COPY ./requirements.txt ./
ADD . /app/
RUN chmod +x /app/start_services.sh
CMD /app/start_services.sh
