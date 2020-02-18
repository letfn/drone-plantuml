FROM letfn/python

USER root
RUN mkdir -p /usr/share/man/man1
RUN apt-get update && apt-get install -y default-jre
RUN apt-get update && apt-get install -y plantuml
USER app

COPY plugin /plugin

ENTRYPOINT [ "/tini", "--", "/plugin" ]
