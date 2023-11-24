$yesterdaytime=(Get-Date).AddHours(-3).AddDays(-1).ToString('yyyy-MM-ddTHH:mm:ss.000Z') # GMT +3
$currenttime=(Get-Date).AddHours(-3).ToString('yyyy-MM-ddTHH:mm:ss.000Z') # GMT +3

echo "Yesterday is $yesterdaytime"
echo "Now is $currenthtime"

$securePasswordPath = 'path_to_secure_password'
$password = Import-CliXml -Path $securePasswordPath
Unlock-SecretStore -Password $password
$automationPassword = Get-Secret -Name Secret_Name
$username="username"
$credentials = [PSCredential]::new($username, $automationPassword)

$headers = @{
'Accept' = 'application/json'
}

$response=Invoke-RestMethod "api_url" -Headers $headers -OutFile response.json -Credential $credentials
