FROM debian:buster

COPY scripts /app/

WORKDIR /app

RUN apt-get update -y

RUN apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev wget

RUN wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz

RUN tar -xf Python-3.9.1.tgz

WORKDIR /app/Python-3.9.1

RUN ./configure --enable-optimizations

RUN make -j 4

RUN make altinstall

RUN python3.9 --version


# RUN [ "sh", "./python-install.sh"]

# RUN ["sh" , "./configure.sh"]