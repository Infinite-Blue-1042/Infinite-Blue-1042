ENV NGHTTP2_VER 895da9a
RUN cd /root && git clone https://github.com/tatsuhiro-t/nghttp2.git
WORKDIR /root/nghttp2
RUN git reset --hard $NGHTTP2_VER
RUN autoreconf -i
RUN automake
RUN autoconf
RUN ./configure
RUN make
RUN make install

WORKDIR /root
RUN wget http://curl.haxx.se/download/curl-7.45.0.tar.gz
RUN tar -zxvf curl-7.45.0.tar.gz
WORKDIR /root/curl-7.45.0
RUN ./configure --with-ssl --with-nghttp2=/usr/local
RUN make
RUN make install
RUN ldconfig
CMD ["-h"]
ENTRYPOINT ["/usr/local/bin/curl"]
