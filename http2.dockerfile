ENV NGHTTP2_VER 895da9a
WORKDIR /root/nghttp2
RUN autoreconf -i
RUN automake
RUN autoconf
RUN ./configure
RUN make
RUN make install
RUN ./configure --with-ssl --with-nghttp2=/usr/local
RUN make
RUN make install
RUN ldconfig
CMD ["-h"]
