FROM arm32v7/debian:latest
WORKDIR /usr/local/src
RUN wget https://znc.in/releases/znc-latest.tar.gz .
RUN tar -xzcf znc-1.6.5.tar.gz
RUN cd znc*
RUN ./configure
RUN make
RUN make install
CMD [ "/usr/local/bin/znc" "--makeconf" ]
ENTRYPOINT [ "/usr/local/bin/znc" ]