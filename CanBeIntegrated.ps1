foreach($i in $(Get-Content .\IPs.txt)){
try{
# Get-EventLog -Newest 10 -ComputerName $i -LogName Security;
Get-WinEvent -ComputerName $i -LogName Security -MaxEvents 10;
$i >> .\worked.txt
}catch{
$i >> .\didnotwork.txt;
$_ >> .\didnotwork.txt;
}
}
