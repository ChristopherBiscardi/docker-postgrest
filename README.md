Docker version of [Postgrest](https://github.com/begriffs/postgrest)

# Using with the official Postgres

Run a Postgres container with `--name`, and `POSTGRES_PASSWORD`:

```
docker run -it --name pgb --rm -e POSTGRES_PASSWORD=pass postgres
```

[..] create a database and fill it with stuff

Run Postgrest by linking to the Postgres container:

```
docker run -itp 8000:8000 --link pgb:postgres -e POSTGRES_DB_NAME=tracker biscarch/postgrest
```
