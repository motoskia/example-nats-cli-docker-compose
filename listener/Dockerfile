FROM alpine
RUN  apk --update add openssl bash \
  && wget https://github.com/shadiakiki1986/nats-cli/releases/download/0.0.4.2/nats-amd64 -O /sbin/nats \
  && chmod +x /sbin/nats
COPY entrypoint.sh .
CMD ["1","sub","foo"]
ENTRYPOINT ["bash","entrypoint.sh"]
