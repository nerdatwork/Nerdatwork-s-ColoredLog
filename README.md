# NerdAtWork's ColoredLog

Powershell script to show Storj's storagenode log with colors.
<hr>

**How to install powershell on Linux?**

```
# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
pwsh

```

*Reference:* https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7

<hr>

**How to install powershell on MacOS?**
```
# Download the powershell '.tar.gz' archive
curl -L -o /tmp/powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v7.0.3/powershell-7.0.3-osx-x64.tar.gz

# Create the target folder where powershell will be placed
sudo mkdir -p /usr/local/microsoft/powershell/7.0.3

# Expand powershell to the target folder
sudo tar zxf /tmp/powershell.tar.gz -C /usr/local/microsoft/powershell/7.0.3

# Set execute permissions
sudo chmod +x /usr/local/microsoft/powershell/7.0.3/pwsh

# Create the symbolic link that points to pwsh
sudo ln -s /usr/local/microsoft/powershell/7.0.3/pwsh /usr/local/bin/pwsh

```

**Installation via Direct download**

```
sudo installer -pkg powershell-lts-7.0.3-osx-x64.pkg -target /
```

*Reference:* https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-macos?view=powershell-7

<hr>

Color | Text
------------ | -------------
![#21E32A](https://via.placeholder.com/15/21E32A/000000?text=+) Green | downloaded
![#F7EC44](https://via.placeholder.com/15/F7EC44/000000?text=+) Yellow | uploaded
![#CD41F9](https://via.placeholder.com/15/CD41F9/000000?text=+) Magenta | deleted
![#3FDBF7](https://via.placeholder.com/15/3FDBF7/000000?text=+) Cyan | canceled
![#C3BDBE](https://via.placeholder.com/15/C3BDBE/000000?text=+) DarkGray | gracefulexit
![#EF3D55](https://via.placeholder.com/15/EF3D55/000000?text=+) Red | error

_This is how it will look_

![outout](https://github.com/nerdatwork/Nerdatwork-s-ColoredLog/blob/master/colored%20storj%20output.png)

<hr>
 
# Affiliate Links

**Brave Browser**
https://brave.com/ner753


<a href="https://hits.seeyoufarm.com"/><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fnerdatwork%2FNerdatwork-s-ColoredLog" align=right /></a>
