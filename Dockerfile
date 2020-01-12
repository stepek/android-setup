FROM msfjarvis/docker-android-sdk:ubuntu-standalone

LABEL version="1.0"
LABEL maintainer="Kamil Stepczuk"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
