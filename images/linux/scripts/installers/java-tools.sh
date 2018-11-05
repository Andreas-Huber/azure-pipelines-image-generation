#!/bin/bash
################################################################################
##  File:  java-tools.sh
##  Team:  CI-Platform
##  Desc:  Installs Java and related tooling (Ant, Gradle, Maven)
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

DEFAULT_JDK_VERSION=8

#Install Azul jdks
#Documentation for Azul JDK installation can be found here: https://www.azul.com/downloads/azure-only/zulu/
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
apt-add-repository "deb http://repos.azul.com/azure-only/zulu/apt stable main"
apt-get -q update
apt-get -y install zulu-7-azure-jdk=\*
apt-get -y install zulu-8-azure-jdk=\*
apt-get -y install zulu-11-azure-jdk=\*
update-java-alternatives -s /usr/lib/jvm/zulu-8-azure-amd64
echo "JAVA_HOME_7_X64=/usr/lib/jvm/zulu-7-azure-amd64" | tee -a /etc/environment
echo "JAVA_HOME_8_X64=/usr/lib/jvm/zulu-8-azure-amd64" | tee -a /etc/environment
echo "JAVA_HOME_11_X64=/usr/lib/jvm/zulu-11-azure-amd64" | tee -a /etc/environment
echo "JAVA_HOME=/usr/lib/jvm/zulu-${DEFAULT_JDK_VERSION}-azure-amd64" | tee -a /etc/environment
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
DocumentInstalledItem "Azul JDK (7) ($(/usr/lib/jvm/zulu-7-azure-amd64/bin/java -showversion |& head -n 1))"
DocumentInstalledItem "Azul JDK (8) ($(/usr/lib/jvm/zulu-8-azure-amd64/bin/java -showversion |& head -n 1))"
DocumentInstalledItem "Azul JDK (11) ($(/usr/lib/jvm/zulu-11-azure-amd64/bin/java -showversion |& head -n 1))"
DocumentInstalledItem "Ant ($(ant -version))"
DocumentInstalledItem "Gradle ${gradle_version}"
DocumentInstalledItem "Maven ($(mvn -version | head -n 1))"
