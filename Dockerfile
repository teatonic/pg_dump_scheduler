FROM ubuntu
MAINTAINER Sami Krissane <sami.krissane@edf.fr>


RUN apt-get update && \
    apt-get install -y python3.7 && \
    apt-get install -y python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    pip install -y schedule



COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ADD pg_backup.sh /pg_backup.sh
RUN chmod +x /pg_backup.sh

ADD pg_dump_scheduler.py /pg_dump_scheduler.py
RUN chmod +x /pg_dump_scheduler.py


ENTRYPOINT ["/entrypoint.sh"]


VOLUME /dump


CMD ["python3.7", "/pg_dump_scheduler.py"]

