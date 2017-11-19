FROM arm32v7/debian:latest
WORKDIR /usr/local/src
RUN apt update
RUN apt install wget build-essential libssl-dev libperl-dev pkg-config -y
RUN wget https://znc.in/releases/znc-latest.tar.gz
RUN tar -xzvf znc-latest.tar.gz
RUN ./znc*/configure
RUN make
RUN make install
CMD [ "/usr/local/bin/znc" "--makeconf" ]
ENTRYPOINT [ "/usr/local/bin/znc" ]
