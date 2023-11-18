foreach($i in $(Get-Content .\IPs.txt)){
try{
Get-EventLog -Newest 10 -ComputerName $i -LogName Security;
$i >> .\worked.txt
}catch{
$i >> .\didnotwork.txt;
$_ >> .\didnotwork.txt;
}
}