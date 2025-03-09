# _     ___ __  __ ____   ___    _  _________   ______  
#| |   |_ _|  \/  | __ ) / _ \  | |/ / ____\ \ / / ___| 
#| |    | || |\/| |  _ \| | | | | ' /|  _|  \ V /\___ \ 
#| |___ | || |  | | |_) | |_| | | . \| |___  | |  ___) |
#|_____|___|_|  |_|____/ \___/  |_|\_\_____| |_| |____/ 


# This function is made by reddit user ak47uk 
#User Link: https://www.reddit.com/user/ak47uk/

Write-Host " _     ___ __  __ ____   ___    _  _________   ______  " 
Write-Host "| |   |_ _|  \/  | __ ) / _ \  | |/ / ____\ \ / / ___| "
Write-Host "| |    | || |\/| |  _ \| | | | | ' /|  _|  \ V /\___ \ "
Write-Host "| |___ | || |  | | |_) | |_| | | . \| |___  | |  ___) |"
Write-Host "|_____|___|_|  |_|____/ \___/  |_|\_\_____| |_| |____/ "

$User = Read-Host "Your Username"

try {
    winget --version
} catch {
    Write-Host "Winget not present / outdated"
# Get the download URL of the latest winget installer from GitHub:
$API_URL = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"
$DOWNLOAD_URL = $(Invoke-RestMethod $API_URL).assets.browser_download_url |
    Where-Object {$_.EndsWith(".msixbundle")}

# Download the installer:
Invoke-WebRequest -URI $DOWNLOAD_URL -OutFile winget.msixbundle -UseBasicParsing

# Install winget:
Add-AppxPackage winget.msixbundle

# Remove the installer:
Remove-Item winget.msixbundle
}

#Made By Me

winget install -e --id Python.Python.3.11

python -m pip install --upgrade pip
pip install pymsgbox
pip install --upgrade setuptools wheel
pip install distutils
pip install pygame
pip install pywin32
pip install PyMsgBox

irm "github.com//quasar098/limbos32/archive/refs/heads/master.zip"

Expand-Archive C\Users\$User\downloads\limbos32-master.zip

#limbo keys byquasar098 
#Project Link: https://github.com/quasar098/limbos32.git

cd limbos32-master

py main.py
