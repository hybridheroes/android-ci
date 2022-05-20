FROM reactnativecommunity/react-native-android:5.4
# FROM bitriseio/docker-android

RUN apt-get update && \
  apt-get install -y \
  build-essential \
  ruby \
  ruby-dev \
  gradle
RUN gem install bundle fastlane

# Get up-to-date gradle
# ARG GRADLE_VERSION=6.7.1
# RUN curl -sL -o gradle.zip https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip &&\
#  mkdir /opt/gradle && unzip -d /opt/gradle gradle.zip && rm gradle.zip
# RUN export PATH=$PATH:/opt/gradle/gradle-${GRADLE_VERSION}/bin

