FROM fluent/fluentd

COPY ./config/fluent.conf /fluentd/etc/fluent.conf

RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-rdoc", "--no-ri"]
