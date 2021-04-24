FROM qzkc/python2.7:v2

COPY ./ /mysqlhoneypot/

WORKDIR /mysqlhoneypot

RUN pip install flask && \
    pip install Flask-HTTPAuth && \
    mv /mysqlhoneypot/docker-entrypoint.sh /docker-entrypoint.sh && \
    chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]