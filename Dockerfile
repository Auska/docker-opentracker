FROM lsiobase/alpine:3.8

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="blog.auska.win version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="Auska"

ENV TZ=Asia/Shanghai PORT=6666

RUN \
	echo "**** install packages ****" \
	&& apk add --no-cache opentracker 

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 6666
VOLUME /mnt
