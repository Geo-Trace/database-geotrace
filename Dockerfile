FROM mongo

LABEL version="1.0"
LABEL description="base de données de l'application Geotrace"

WORKDIR /app

COPY . .


RUN mongod --config /mongod.conf










