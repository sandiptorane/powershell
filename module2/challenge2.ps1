#loop the until monday if want to stop change date on your computer

$Date = Get-Date

while($Date.DayOfWeek -ne 'Monday'){
     'Is is still ' +$Date.DayOfWeek

     sleep -Milliseconds 100
   
     $Date = Get-Date
}

'Is is ' + $Date.DayOfWeek