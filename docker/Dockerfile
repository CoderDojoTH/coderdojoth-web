FROM python

RUN addgroup --gid 1000 g1000
RUN adduser --disabled-password --gecos '' --no-create-home --shell '/bin/bash' --home '/mnt/' --uid 1000 --gid 1000 u1000
RUN adduser --disabled-password --gecos '' --no-create-home --shell '/bin/bash' --home '/mnt/' --uid 1001 --gid 1000 u1001

RUN mkdir -p ~/.ssh/ && \
    ssh-keyscan github.com >> ~/.ssh/known_hosts
ADD build-files/start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
