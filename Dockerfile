FROM debian

WORKDIR /cockroach/

COPY ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY cockroach.sh /cockroach/cockroach.sh
COPY cockroach-linux-3.7.10-gnu-aarch64 /cockroach/cockroach

EXPOSE 26257 8080
ENTRYPOINT ["/cockroach/cockroach.sh"]
