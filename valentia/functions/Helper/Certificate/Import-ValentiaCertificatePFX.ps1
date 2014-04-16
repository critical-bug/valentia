﻿#Requires -Version 3.0

#-- Helper for certificate --#

function Import-ValentiaCertificatePFX
{
    [CmdletBinding()]
    param
    (
        [parameter(
            mandatory = 0,
            position  = 0)]
        [ValidateNotNullOrEmpty()]
        [string]
        $CN = $valentia.certificate.CN,

        [parameter(
            mandatory = 0,
            position  = 1)]
        [ValidateNotNullOrEmpty()]
        [System.Security.Cryptography.X509Certificates.StoreLocation]
        $certStoreLocation = $valentia.certificate.import.CertStoreLocation,

        [parameter(
            mandatory = 0,
            position  = 2)]
        [ValidateNotNullOrEmpty()]
        [System.Security.Cryptography.X509Certificates.StoreName]
        $certStoreName = $valentia.certificate.import.CertStoreName,

        [parameter(
            mandatory = 0,
            position  = 3,
            ValueFromPipeline = 1,
            ValueFromPipelineByPropertyName = 1)]
        [ValidateNotNullOrEmpty()]
        [string]
        $importFilePath = $valentia.certificate.FilePath.PFX
    )
    
    begin
    {
        "obtain pfx." | Write-ValentiaVerboseDebug
        $FilePath = ($importFilePath -f $CN)
        if (-not (Test-Path $FilePath))
        {
            throw "Certificate not found in '{0}'. Make sure you have been already exported." -f $FilePath
        }

        "Get pfx password to export." | Write-ValentiaVerboseDebug
        $credential = Get-Credential -Credential "INPUT Password FOR PFX export."

        "PFX identification." | Write-ValentiaVerboseDebug
        $flags = [System.Security.Cryptography.X509Certificates.X509KeyStorageFlags]::MachineKeySet -bor [System.Security.Cryptography.X509Certificates.X509KeyStorageFlags]::PersistKeySet
        $PFXToImport = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2 $FilePath, $credential.GetNetworkCredential().Password, $flags
        $PFXStore = New-Object System.Security.Cryptography.X509Certificates.X509Store $CertStoreName, $CertStoreLocation
    }

    process
    {
        try
        {
            "Import certificate PFX '{0}' to CertStore '{1}'" -f $FilePath, (Get-Item ("cert:{0}\{1}" -f $certStore.Location, $certStore.Name)).PSPath | Write-ValentiaVerboseDebug
            $PFXStore.Open([System.Security.Cryptography.X509Certificates.OpenFlags]::MaxAllowed)
            $PFXStore.Add($PFXToImport)
        }
        finally
        {
            $PFXStore.Close()
        }
    }
}