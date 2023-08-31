# guess the number with unlimited chances
$GuessNumber = Get-Random -Minimum 1 -Maximum 10

'Guess the number between 1 and 10'
[int]$Guess = Read-Host

While($Guess -ne $GuessNumber)
{
   if($Guess -lt $GuessNumber)
   {
     'you guess it too low try again'
   }

   if($Guess -gt $GuessNumber)
   {
     'you guess it too high try again'
   }

    $Guess = Read-Host
}

''

'You guess it correct number was '+ $GuessNumber


