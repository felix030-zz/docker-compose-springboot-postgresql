FROM postgres
MAINTAINER felix.klemke@navitas.de

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD 123
ENV POSTGRES_DB my_new_database

# Create the table on start-up
ADD schemas/createQuery.sql /docker-entrypoint-initdb.d/

VOLUME /var/lib/postgresql/data

EXPOSE 5432
CMD ["postgres"]
