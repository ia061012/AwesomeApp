#!/bin/bash

./gradlew assembleRelease

ls -l app/build/outputs/apk/app-release.apk
ls -l /home/ubuntu/AwesomeApp/app/build/outputs/apk/app-release.apk

curl -F "file=@app/build/outputs/apk/app-release.apk" -F "token=${DEPLOY_GATE_API_KEY}" -F "message=sample" https://deploygate.com/api/users/ia61012/apps

echo $?
