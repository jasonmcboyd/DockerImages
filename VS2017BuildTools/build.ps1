$imageName = 'jasonmcboyd/vs2017buildtools'
$tag = 'v15.8.7.0-20181030'

docker image build `
    --tag "${imageName}:$tag" `
    --tag "${imageName}:latest" `
    $PSScriptRoot