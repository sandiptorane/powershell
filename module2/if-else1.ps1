'What day it is and I tell you what you will eat'

$day = Read-Host

if ($day -eq 'Monday') {
    'On ' + $day +' you eat biryani'
}
elseif($day -eq 'Tuesday') {
 'On ' + $day +' you eat paneer thali'
}
else {
'I don not care'
}