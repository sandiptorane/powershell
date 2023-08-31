# guess the number with unlimited chances
$GuessNumber = Get-Random -Minimum 1 -Maximum 5

$chances = 3
'Guess the number between 1 and 5 total chances are '+$chances
$Guess = Read-Host

$chances = $chances -1

While($Guess -ne $GuessNumber -and $chances -gt 0)
{
   if($Guess -lt $GuessNumber)
   {
     'you guess it too low try again remaining chances are '+ $chances
   }

   if($Guess -gt $GuessNumber)
   {
     'you guess it too high try again remaining chances are '+ $chances
   }

    $Guess = Read-Host

    $chances = $chances -1
}

''

if($GuessNumber -eq $Guess) { 
   'You guess it correct number was '+ $GuessNumber + ' remaining chances are '+ $chances
}else {
    'You lose it was' + $GuessNumber
}


