FROM rabbitmq:management

RUN mkdir /app
COPY . /app
WORKDIR /app
EXPOSE 15672 5672
ENTRYPOINT ["/app/configure_and_start_docker_rabbit.sh"]
