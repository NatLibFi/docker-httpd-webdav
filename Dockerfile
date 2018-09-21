FROM httpd:2-alpine

ENTRYPOINT ["/entrypoint.sh"]
CMD ["httpd-foreground"]

COPY entrypoint.sh /
COPY conf-stub.txt /usr/local/apache2/

RUN cat conf-stub.txt >> conf/httpd.conf \
  && mkdir var && chown daemon:daemon var \
  && rm htdocs/index.html
