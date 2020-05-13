# https://www.docker.elastic.co/
FROM docker.elastic.co/kibana/kibana:7.6.2

COPY ./config/kibana.yml /usr/share/kibana/config/kibana.yml
#RUN chown -R kibana:kibana /usr/share/kibana/config/

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>
