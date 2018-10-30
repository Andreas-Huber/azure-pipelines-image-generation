#!/bin/bash
################################################################################
##  File:  android.sh
##  Team:  CI-Platform
##  Desc:  Installs Android SDK
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh
source $HELPER_SCRIPTS/apt.sh

# Set env variable for SDK Root (https://developer.android.com/studio/command-line/variables)
ANDROID_ROOT=/usr/local/lib/android
ANDROID_SDK_ROOT=${ANDROID_ROOT}/sdk
echo "ANDROID_SDK_ROOT=${ANDROID_SDK_ROOT}" | tee -a /etc/environment

# ANDROID_HOME is deprecated, but older versions of Gradle rely on it
echo "ANDROID_HOME=${ANDROID_SDK_ROOT}" | tee -a /etc/environment

#Install Android SDK
wget -O android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip android-sdk.zip -d ${ANDROID_ROOT}
rm -f android-sdk.zip

# Install the following build tools, pass in "y" to accept Licenses
echo "y" | ${ANDROID_ROOT}/tools/bin/sdkmanager --sdk_root=${ANDROID_SDK_ROOT} \
    "ndk-bundle" \
    "platform-tools" \
    "platforms;android-28" \
    "platforms;android-27" \
    "platforms;android-26" \
    "platforms;android-25" \
    "platforms;android-24" \
    "platforms;android-23" \
    "platforms;android-22" \
    "platforms;android-21" \
    "platforms;android-19" \
    "platforms;android-17" \
    "platforms;android-15" \
    "platforms;android-10" \
    "build-tools;28.0.2" \
    "build-tools;28.0.0" \
    "build-tools;27.0.3" \
    "build-tools;27.0.1" \
    "build-tools;26.0.3" \
    "build-tools;26.0.1" \
    "build-tools;25.0.3" \
    "build-tools;24.0.3" \
    "build-tools;23.0.3" \
    "build-tools;23.0.1" \
    "build-tools;22.0.1" \
    "build-tools;21.1.2" \
    "build-tools;19.1.0" \
    "build-tools;17.0.0" \
    "extras;android;m2repository" \
    "extras;google;m2repository" \
    "extras;google;google_play_services" \
    "extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.2" \
    "extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.1" \
    "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.2" \
    "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.1" \
    "add-ons;addon-google_apis-google-24" \
    "add-ons;addon-google_apis-google-23" \
    "add-ons;addon-google_apis-google-22" \
    "add-ons;addon-google_apis-google-21" \
    "cmake;3.6.4111459" \
    "patcher;v4"

# Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Google Repository 58"
DocumentInstalledItem "Google Play services 49"
DocumentInstalledItem "Google APIs 24"
DocumentInstalledItem "Google APIs 23"
DocumentInstalledItem "Google APIs 22"
DocumentInstalledItem "Google APIs 21"
DocumentInstalledItem "CMake 3.6.4111459"
DocumentInstalledItem "Android Support Repository 47.0.0"
DocumentInstalledItem "Android Solver for ConstraintLayout 1.0.2"
DocumentInstalledItem "Android Solver for ConstraintLayout 1.0.1"
DocumentInstalledItem "Android SDK Platform-Tools 28.0.0"
DocumentInstalledItem "Android SDK Platform 28"
DocumentInstalledItem "Android SDK Platform 27"
DocumentInstalledItem "Android SDK Platform 26"
DocumentInstalledItem "Android SDK Platform 25"
DocumentInstalledItem "Android SDK Platform 24"
DocumentInstalledItem "Android SDK Platform 23"
DocumentInstalledItem "Android SDK Platform 22"
DocumentInstalledItem "Android SDK Platform 21"
DocumentInstalledItem "Android SDK Platform 19"
DocumentInstalledItem "Android SDK Platform 17"
DocumentInstalledItem "Android SDK Platform 15"
DocumentInstalledItem "Android SDK Platform 10"
DocumentInstalledItem "Android SDK Patch Applier v4"
DocumentInstalledItem "Android SDK Build-Tools 28.0.2"
DocumentInstalledItem "Android SDK Build-Tools 28.0.0"
DocumentInstalledItem "Android SDK Build-Tools 27.0.3"
DocumentInstalledItem "Android SDK Build-Tools 27.0.1"
DocumentInstalledItem "Android SDK Build-Tools 26.0.3"
DocumentInstalledItem "Android SDK Build-Tools 26.0.1"
DocumentInstalledItem "Android SDK Build-Tools 25.0.3"
DocumentInstalledItem "Android SDK Build-Tools 24.0.3"
DocumentInstalledItem "Android SDK Build-Tools 23.0.3"
DocumentInstalledItem "Android SDK Build-Tools 23.0.1"
DocumentInstalledItem "Android SDK Build-Tools 22.0.1"
DocumentInstalledItem "Android SDK Build-Tools 21.1.2"
DocumentInstalledItem "Android SDK Build-Tools 19.1.0"
DocumentInstalledItem "Android SDK Build-Tools 17.0.0"
DocumentInstalledItem "Android NDK 17.1.4828580"
DocumentInstalledItem "Android ConstraintLayout 1.0.2"
DocumentInstalledItem "Android ConstraintLayour 1.0.1"
