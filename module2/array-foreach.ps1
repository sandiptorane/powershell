$array = @()

# append data to array
$array = $array + 'Sandip'
$array = $array + 'Ankit'
$array = $array + 'Rohit'

foreach($item in $array)
{
   'hello that is nice name '+ $item
}

'end loop'