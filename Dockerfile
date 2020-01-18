FROM msfjarvis/docker-android-sdk:ubuntu-standalone

LABEL version="1.0"
LABEL maintainer="Kamil Stepczuk"

# Install nodejs
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x  | bash -
RUN apt-get -y install nodejs

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
