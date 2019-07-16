# Import (PFX)
$pass = $(Get-Credential).Password
$cert = Import-PFXCertificate -FilePath "C:\Path.pfx" -CertStoreLocatation cert:\LocalMachine\My -Password $pass #[System.Security.Cryptography.X509Certificates.X509Certificate2]


# Stage (PFX or CER)
$hostname="partial.web.com"
$iisSite="Default Web Site"
$cert = (Get-ChildItem cert:\LocalMachine\My 
      | where-object { $_.Subject -like "*$hostname*" } 
      | Select-Object -First 1).Thumbprint
# PFX
certutil -importpfx $cert
# CER
certutil -addstore MY <Cer_File>



