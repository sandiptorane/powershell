'Enter name of service which you want to see on screen?'

$service = Read-Host

Get-Service -Name $service