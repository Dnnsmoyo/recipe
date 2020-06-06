FROM ubuntu:18.04
ENTRYPOINT []
RUN apt-get update 
RUN apt-get install -y python3 
RUN apt get install pip 
RUN pip3 instal rasa==1.5.3
ADD . /app/
RUN chmod +x /app/start_services.sh
CMD /app/start_services.sh
