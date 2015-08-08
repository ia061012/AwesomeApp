#!/bin/bash

./gradlew assembleRelease
curl -F "file=@app/build/outputs/apk/app-release.apk" -F "token=${DEPLOY_GATE_API_KEY}" -      F "message=sample" https://deploygate.com/api/users/ia61012/apps
