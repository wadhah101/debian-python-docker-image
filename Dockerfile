FROM debian:buster

COPY scripts /app/

WORKDIR /app

RUN chmod +x *.sh

RUN [ "./python-install.sh"]

RUN ["ln" , "-s" , "/usr/local/bin/python3.9", "/usr/local/bin/python"]

RUN [ "./configure.sh"]

ENTRYPOINT [ "python" , "-u" , "/app/hello.py" ]