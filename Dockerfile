FROM scratch

ADD rootfs.tar /
COPY hello.sh /usr/local/bin/hello
CMD "/usr/local/bin/hello"
