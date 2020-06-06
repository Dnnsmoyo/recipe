#Grab the latest alpine image
FROM rasa/rasa

# Install python and pip
ADD ./requirements.txt /.


# Expose is NOT supported by Heroku
# EXPOSE 5000 		

# Run the image as a non-root user
RUN adduser -D myuser
USER myuser

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
CMD $(echo “rasa run -p $PORT -m models --credentials credentials.yml --enable-api --log-file out.log --endpoints endpoints.yml” | sed ‘s/=//’)
