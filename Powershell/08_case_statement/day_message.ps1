$day = Read-Host "Enter a day of the week"
switch ($day) {
    "Monday" { Write-Output "Start of the work week." }
    "Friday" { Write-Output "Almost the weekend!" }
    "Sunday" { Write-Output "Enjoy the rest day!" }
    Default { Write-Output "Have a nice day!" }
}