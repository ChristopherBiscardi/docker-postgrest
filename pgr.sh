/opt/postgrest-0.2.4.9\
    --db-name $POSTGRES_DB_NAME \
    --db-port $POSTGRES_PORT_5432_TCP_PORT \
    --db-user postgres \
    --db-pass $POSTGRES_ENV_POSTGRES_PASSWORD \
    --db-host $POSTGRES_PORT_5432_TCP_ADDR \
    -p 8000 \
    -a postgres \
    --secure \
    --db-pool 200
