# Android CI 

This Docker image is being used by our private Gitlab CI agent to enable Android builds. We are simply extending the official React Native Android CI image with fastlane. 

## Updating the Android CI image 

Docker images are published in our Dockerhub account https://hub.docker.com/repository/docker/hybridheroes/android-ci. To access the account you will need to obtain access credentials from BitWarden. 

To upload an updated Version of the image, follow these steps: 

1. Bump the upstream image's version in the `Dockerfile`

```Dockerfile
FROM reactnativecommunity/react-native-android:5.4
```

2. Build a Docker image. Be sure to tag it with an incremented version and update the latest tag.

```shell
 docker build . -t hybridheroes/android-ci:3
 docker tag hybridheroes/android-ci:3 hybridheroes/android-ci:latest
```

3. Push the image to Dockerhub: 

```shell
docker push hybridheroes/android-ci:3
docker push hybridheroes/android-ci:latest
```

4. Use the updated image in your `.gitlab-ci.yml`:

```yml
.deploy_android:
  extends: .deploy
  image: hybridheroes/android-ci:3
  tags:
    - docker
```