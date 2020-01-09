FROM python:alpine
COPY . /opt/app
WORKDIR /opt/app
ENV EFB_DATA_PATH  /opt/app/ehforward_config
ENV PROFILE default
RUN apk --no-cache --virtual build add sed build-base libffi-dev openssl-dev &&\
    apk --no-cache add jpeg-dev zlib-dev libmagic libwebp-dev ffmpeg cairo &&\
    pip install -U pip &&\
    pip install -r requirements.txt &&\
    rm -rf ~/.cache &&\
    apk del build  &&\
    chmod +x /opt/app/init.sh
VOLUME /opt/app/ehforward_config/profiles/${PROFILE}/blueset.telegram
ENTRYPOINT ["sh", "/opt/app/init.sh"]
