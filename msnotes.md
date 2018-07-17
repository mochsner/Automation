### PowerShell 5.1
# reF: https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Security/Set-ExecutionPolicy?view=powershell-5.1


## Set-ExecutionPolicy

# Set the shell execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

# Set a shell execution policy that conflicts with the group policy
Set-ExecutionPolicy -ExecutionPolicy Restricted
* Set-ExecutionPolicy : Windows PowerShell updated your local preference successfully, but the setting is
overridden by the group policy applied to your system. Due to the override, your shell will retain its current
effective execution policy of "AllSigned". Contact your group policy administrator for more information.
At line:1 char:20
+ Set-ExecutionPolicy  <<<< restricted

# Apply the execution policy from a remote computer to the local computer
Invoke-Command -ComputerName "Server01" -ScriptBlock {Get-ExecutionPolicy} | Set-ExecutionPolicy -Force

