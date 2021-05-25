FROM drupal:9.0

RUN mkdir web/sites/default/modules && \
    chmod 777 web/sites/default/modules

RUN mkdir web/sites/default/files && \
    chmod 777 web/sites/default/files

COPY modules web/sites/default/modules

# dev
# COPY 000-default.conf.org /etc/apache2/sites-available/000-default.conf

EXPOSE 80 443