FROM docker.elastic.co/beats/filebeat:7.5.0

# Need to make the folder readable by the Root group
USER root
RUN chown .root -R /usr/share/filebeat/

# -e sends the errors to stdout, and -v is for verbose
ENTRYPOINT ["/usr/share/filebeat/filebeat","-e","-v"]
