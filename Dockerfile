FROM tomcat:9-jdk8
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update
RUN apt-get install -y netcat postgresql-client-11 && rm -rf /var/cache/apk/*
RUN rm -rf ${CATALINA_HOME}/webapps/ROOT
COPY scripts/wait-for.sh /usr/local/bin/wait-for.sh
RUN chmod +x /usr/local/bin/wait-for.sh
COPY target/Afroteca/ ${CATALINA_HOME}/webapps/Afroteca/

EXPOSE 8080