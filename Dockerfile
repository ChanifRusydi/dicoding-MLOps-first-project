FROM tensorflow/serving:2.15.1
COPY serving_model/sentiment-model/ /models/sentiment-model
ENV MODEL_NAME=sentiment-model
ENTRYPOINT ["/usr/bin/tf_serving_entrypoint.sh"]