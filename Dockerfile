#Grab the latest alpine image
FROM rasa:latest

# Install python and pip
RUN apk add --no-cache --update python3 py3-pip bash
ADD ./requirements.txt /.

# Install dependencies
RUN pip3 install --no-cache-dir -q -r ./requirements.txt

# Add our code
ADD ./app/
WORKDIR ./app

# Expose is NOT supported by Heroku
# EXPOSE 5000 		

# Run the image as a non-root user
RUN adduser -D myuser
USER myuser

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
CMD $(echo “rasa run -p $PORT -m models --credentials credentials.yml --enable-api --log-file out.log --endpoints endpoints.yml” | sed ‘s/=//’)
