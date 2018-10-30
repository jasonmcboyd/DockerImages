$imageName = 'jasonmcboyd/git'
$date = [DateTime]::Now.ToString('yyyyMMdd')
$tag = "v2.19.1-$date"

docker image build `
    --tag "${imageName}:$tag" `
    --tag "${imageName}:latest" `
    $PSScriptRoot