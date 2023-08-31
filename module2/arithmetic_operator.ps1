'Please enter number 1'

[int]$number1 = Read-Host

'Please enter number 2'

[int]$number2 = Read-Host

$add = $number1 + $number2

'Addition of '+$number1+ ' and ' + $number2 + ' is '+ $add 


$mult = $number1 * $number2

'Multiplication of '+$number1+ ' and ' + $number2 + ' is '+ $mult

[int]$div = $number1 / $number2

'Division of '+$number1+ ' and ' + $number2 + ' is '+ $div

$mod = $number1 % $number2

'Mod of '+$number1+ ' and ' + $number2 + ' is '+ $mod  