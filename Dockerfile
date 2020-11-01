FROM influxdb:latest

ENV INFLUXDB_HTTP_AUTH_ENABLED false

COPY ./entries/entries.iql /docker-entrypoint-initdb.d
RUN /bin/bash -c 'chmod -R 755 /docker-entrypoint-initdb.d'

CMD ["influxd"]