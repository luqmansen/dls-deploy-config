FROM deepcognitionlabs/deep-learning-studio:latest

RUN ["rm", "-fr", "/root/.keras"]
COPY ./.keras/keras.json /root/.keras/keras.json

CMD ["/home/app/start.sh"]