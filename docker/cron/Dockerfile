FROM ubuntu:16.04


RUN apt-get update && apt-get install -y supervisor && apt-get clean
RUN mkdir -p /var/log/supervisor /usr/src/app

# Install modules
RUN apt-get update && apt-get install -y \
        cron \
        ssh \
        git \
        --no-install-recommends

RUN apt-get purge -y g++ \
    && apt-get autoremove -y \
    && rm -r /var/lib/apt/lists/* \
    && rm -rf /tmp/*


COPY supervisord.conf /etc/supervisord.conf
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisord.conf"]


