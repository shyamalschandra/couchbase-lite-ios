#!/bin/bash -xe

cd couchbase-lite-ios

SCHEMES=("CBL_EE_ObjC" "CBL_EE_Swift")
for SCHEME in "${SCHEMES[@]}"
do
  xcodebuild test -project CouchbaseLite.xcodeproj -scheme "$SCHEME" -sdk iphonesimulator -destination "platform=iOS Simulator,name=iPhone 8"
done
