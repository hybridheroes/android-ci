# pin node v12 due to issue with npm hooks https://github.com/npm/cli/issues/1905
ARG NODE_VERSION=12.x

FROM reactnativecommunity/react-native-android

RUN apt-get update && \
  apt-get install -y \
  build-essential \
  ruby \
  ruby-dev
RUN gem install bundle fastlane