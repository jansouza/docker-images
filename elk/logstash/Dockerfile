# https://www.docker.elastic.co/
FROM docker.elastic.co/logstash/logstash:7.6.2

COPY ./config/logstash.yml /usr/share/logstash/config/logstash.yml
COPY ./config/pipeline/ /usr/share/logstash/pipeline/

#RUN chown -R logstash:logstash /usr/share/logstash

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
