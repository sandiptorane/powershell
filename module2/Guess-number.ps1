$GuessNumber = Get-Random -Minimum 1 -Maximum 3

'Guess the number between 1 and 2'
$Guess = Read-Host

if($Guess -eq $GuessNumber)
{
  'You won number was '+ $GuessNumber
}else{

 'You lose number was '+ $GuessNumber
}

