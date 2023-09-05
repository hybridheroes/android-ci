FROM --platform=linux/amd64 reactnativecommunity/react-native-android:v11.0

RUN apt-get update && \
  apt-get install -y \
  build-essential \
  gradle
RUN gem install bundle fastlane