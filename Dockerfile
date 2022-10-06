FROM mongo

LABEL version="1.0"
LABEL description="base de données de l'application Geotrace"

WORKDIR /app

COPY . .

CMD  {mongosh \
&& docker run -d -p 27017:27017 docker/mongo}
# RUN mongod --config /mongod.conf
