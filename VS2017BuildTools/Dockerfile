# escape=`

FROM microsoft/windowsservercore:10.0.14393.2551 AS chocolatey
RUN ["powershell.exe", "Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"]

FROM chocolatey AS buildtools
RUN choco install visualstudio2017buildtools -y

FROM buildtools
SHELL ["powershell.exe", "-command"]
RUN $msbuildPath = 'C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\MSBuild\15.0\Bin\'; `
    $envPath = [System.Environment]::GetEnvironmentVariable('Path', 'Machine'); `
    [System.Environment]::SetEnvironmentVariable('Path', $envPath + $msbuildPath + ';', 'Machine')
CMD ["powershell.exe"]