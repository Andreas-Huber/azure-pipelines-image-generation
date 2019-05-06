---
layout: post
title: Error - CocoaPods 'podname' does not support provisioning profiles
---

With the roll out of CocoaPods 1.6.1 on the Microsoft-hosted macOS image, your pipeline may encounter the following error code 65:

```error: <podname> does not support provisioning profiles. <podname> does not support provisioning profiles but provisioning profile <distrprofile> has been manually specified. Set the provisioning profile value to "Automatic" in the build settings editor. (in target '<podname>')```

As an alternative to adapting to the latest version of CocoaPods, you can add the following script to the start of your pipeline to roll back to a previous CocoaPods version:

```bash
echo "Uninstalling all CocoaPods versions..."
sudo gem uninstall cocoapods -ax
echo "Installing CocoaPods version 1.5.3..."
sudo gem install cocoapods -v 1.5.3
```
