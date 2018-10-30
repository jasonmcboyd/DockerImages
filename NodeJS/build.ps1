$imageName = 'jasonmcboyd/nodejs'
$date = [DateTime]::Now.ToString('yyyyMMdd')
$tag = "v10.12.0-$date"

docker image build `
    --tag "${imageName}:$tag" `
    --tag "${imageName}:latest" `
    $PSScriptRoot