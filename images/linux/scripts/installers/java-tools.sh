#!/bin/bash
################################################################################
##  File:  java-tools.sh
##  Team:  CI-Platform
##  Desc:  Installs Java and related tooling (Ant, Gradle, Maven)
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

DEFAULT_JDK_VERSION=8

# Install Java OpenJDKs, fast
apt-add-repository -y ppa:openjdk-r/ppa
apt-get update
apt-fast install -y --no-install-recommends openjdk-7-jdk openjdk-8-jdk openjdk-9-jdk openjdk-10-jdk openjdk-11-jdk
update-alternatives --set java /usr/lib/jvm/java-"${DEFAULT_JDK_VERSION}"-openjdk-amd64/jre/bin/java

echo "JAVA_HOME_7_X64=/usr/lib/jvm/java-7-openjdk-amd64" | tee -a /etc/environment
echo "JAVA_HOME_8_X64=/usr/lib/jvm/java-8-openjdk-amd64" | tee -a /etc/environment
echo "JAVA_HOME_9_X64=/usr/lib/jvm/java-9-openjdk-amd64" | tee -a /etc/environment
echo "JAVA_HOME_10_X64=/usr/lib/jvm/java-10-openjdk-amd64" | tee -a /etc/environment
echo "JAVA_HOME_11_X64=/usr/lib/jvm/java-11-openjdk-amd64" | tee -a /etc/environment
echo "JAVA_HOME=/usr/lib/jvm/java-${DEFAULT_JDK_VERSION}-openjdk-amd64" | tee -a /etc/environment
echo "JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8" | tee -a /etc/environment

# Install Ant
apt-fast install -y --no-install-recommends ant ant-optional
echo "ANT_HOME=/usr/share/ant" | tee -a /etc/environment

# Install Maven
curl -sL http://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.zip -o maven.zip
unzip -d /usr/share maven.zip
rm maven.zip
ln -s /usr/share/apache-maven-3.5.4/bin/mvn /usr/bin/mvn
echo "M2_HOME=/usr/share/apache-maven-3.5.4" | tee -a /etc/environment

# Install Gradle
gradle_version="4.10"
curl -sL https://services.gradle.org/distributions/gradle-"${gradle_version}"-bin.zip -o gradle-"${gradle_version}".zip
unzip -d /usr/share gradle-"${gradle_version}".zip
ln -s /usr/share/gradle-"${gradle_version}"/bin/gradle /usr/bin/gradle
rm gradle-"${gradle_version}".zip
echo "GRADLE_HOME=/usr/share/gradle" | tee -a /etc/environment

# Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"
for cmd in gradle java javac mvn ant; do
    if ! command -v $cmd; then
        echo "$cmd was not installed or found on path"
        exit 1
    fi
done


# Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "OpenJDK (7) ($(/usr/lib/jvm/java-7-openjdk-amd64/bin/java -showversion |& head -n 1))"
DocumentInstalledItem "OpenJDK (8) ($(/usr/lib/jvm/java-8-openjdk-amd64/bin/java -showversion |& head -n 1))"
DocumentInstalledItem "OpenJDK (9) ($(/usr/lib/jvm/java-9-openjdk-amd64/bin/java -showversion |& head -n 1))"
DocumentInstalledItem "OpenJDK (10) ($(/usr/lib/jvm/java-10-openjdk-amd64/bin/java -showversion |& head -n 1))"
DocumentInstalledItem "OpenJDK (11) ($(/usr/lib/jvm/java-11-openjdk-amd64/bin/java -showversion |& head -n 1))"
DocumentInstalledItem "Ant ($(ant -version))"
DocumentInstalledItem "Gradle ${gradle_version}"
DocumentInstalledItem "Maven ($(mvn -version | head -n 1))"
