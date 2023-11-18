 Add-Content "[" -NoNewline -Path .\Result.txt; 

foreach($i in $(Get-Content .\IPs.txt))
{
Add-Content -Path .\Result.txt -NoNewline "`"$i`", "
};

$ResultFile = Get-Content .\Result.txt
$FinalResult = $ResultFile.Substring(0, $ResultFile.Length - 2)

Set-Content -Path .\Result.txt -Value $FinalResult -NoNewline;
Add-Content -Path .\Result.txt -NoNewline "]";