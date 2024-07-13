FROM eclipse-mosquitto:2.0

ENV BRIDGE_HOSTNAME=default
ENV BRIDGE_PORT=1883

COPY entrypoint.sh /usr/bin
COPY mosquitto.conf.template /mosquitto/config/

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]

CMD [ "mosquitto", "-c", "/mosquitto/config/mosquitto.conf" ]
