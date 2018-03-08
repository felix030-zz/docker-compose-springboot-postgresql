FROM postgres
MAINTAINER felix.klemke@navitas.de


ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=123
ENV POSTGRES_DB my_new_database

# Create the table on start-up
ADD schemas/createQuery.sql /docker-entrypoint-initdb.d/

ENV PGDATA /var/lib/postgresql/data
#this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" 

VOLUME /var/lib/postgresql/data

EXPOSE 5432
CMD ["postgres"]