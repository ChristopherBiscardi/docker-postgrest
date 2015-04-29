FROM debian:jessie

RUN apt-get update
RUN apt-get install -y curl xz-utils postgresql

WORKDIR /opt
RUN curl http://bin.begriffs.com/dbapi/heroku/postgrest-0.2.8.0.tar.xz | tar xJ

ADD ./pgr.sh /opt/pgr.sh

CMD /opt/postgrest-0.2.8.0 --db-name $POSTGRES_DB_NAME --db-port $POSTGRES_PORT_5432_TCP_PORT --db-user postgres --db-pass $POSTGRES_ENV_POSTGRES_PASSWORD --db-host $POSTGRES_PORT_5432_TCP_ADDR -p 8000 -a postgres --secure --db-pool 200
