FROM scratch
MAINTAINER "D.S. Ljungmark" <spider@modio.se>

env LANG C.UTF-8
env LC_CTYPE C.utf8

ARG URL=unknown
ARG COMMIT=unknown
ARG BRANCH=unknown
ARG HOST=unknown
ARG DATE=unknown

LABEL "se.modio.ci.url"=$URL "se.modio.ci.branch"=$BRANCH "se.modio.ci.commit"=$COMMIT "se.modio.ci.host"=$HOST "se.modio.ci.date"=$DATE


ADD rootfs.tar /
COPY hello /usr/local/bin/hello
CMD "/usr/local/bin/hello"
