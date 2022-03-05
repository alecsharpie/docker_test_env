FROM python:3.8.12-buster

# ARGS can be set during build make the containers env dynamic
ARG API_TOKEN
ARG API_KEY

ENV API_TOKEN ${API_TOKEN}
ENV API_KEY ${API_KEY}

CMD echo API_TOKEN: $API_TOKEN && \
  echo API_KEY: $API_KEY
