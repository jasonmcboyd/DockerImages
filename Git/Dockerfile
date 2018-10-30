# escape=`

FROM microsoft/windowsservercore:10.0.14393.2551 AS chocolatey
RUN ["powershell.exe", "Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"]

FROM chocolatey
RUN choco install git.install -y
CMD ["powershell.exe"]
