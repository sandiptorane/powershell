'Give me service name'

$serviceName = Read-Host

$Service = Get-Service -Name $serviceName

'The service with the name ' + $Service.Name + ' has status '+$Service.Status 