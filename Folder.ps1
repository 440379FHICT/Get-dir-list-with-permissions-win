$path = 'C:\'
$a = Get-ChildItem -Directory -Recurse -Force -Path $path
$i = Foreach ($b in $a){
Get-Acl  $b.FullName
} 
$date = Get-Date -UFormat "%d-%m-%Y"
$time = Get-Date -Format "HH mm ss"
$fulldate = "$date($time)"
$filename = "list_$fulldate.txt"
$j = Split-Path $script:MyInvocation.MyCommand.Path
$i > "$j\Output\$filename"


