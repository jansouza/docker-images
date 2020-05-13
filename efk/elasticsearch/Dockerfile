# https://www.docker.elastic.co/
FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.2

COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/config

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
