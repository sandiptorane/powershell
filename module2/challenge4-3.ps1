<# 2.Put all the services in the $services array. Again, display The <nameofservice> is a great service ! 
But… if your system found the spooler service it additionally needs to display. 
Wow, I found the spooler service ! Really Cool! Look at the following for inspiration
#>

 $services = Get-Service 

 foreach($service in $services)
 {
    if ($service.Name -eq 'spooler'){
       'Wow, I found the spooler service ! Really Cool!'
    }
    else{
    'The '+$service.Name + 'is a great service'
    }
 }