<# 1.Put all the services in a $Services array.
 Now for all the services display The <nameofservice> is a great service ! Look at the following partial output for inspiration.
 #>

 $services = Get-Service 

 foreach($service in $services)
 {
    'The '+$service.Name + 'is a great service'
 }