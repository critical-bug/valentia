#
# Module manifest for module 'valentia'
#
# Generated by: guitarrapc
#
# Generated on: 5/31/2014
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '0.4.0'

# ID used to uniquely identify this module
GUID = '6f28509f-533d-49d2-84ec-5fda238cdd3b'

# Author of this module
Author = 'guitarrapc'

# Company or vendor of this module
CompanyName = 'guitarrapc'

# Copyright statement for this module
Copyright = '(c) 2014 guitarrapc. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PowerShell Remote deployment library for Windows Servers'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
DotNetFrameworkVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module
CLRVersion = '4.0.0.0'

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('valentia.psm1')

# Functions to export from this module
FunctionsToExport = 'ConvertTo-ValentiaTask', 'Convert-ValentiaDecryptPassword', 
               'Convert-ValentiaEncryptPassword', 'Edit-ValentiaConfig', 
               'Export-ValentiaCertificate', 'Export-ValentiaCertificatePFX', 
               'Get-ValentiaCertificateFromCert', 'Get-ValentiaCredential', 
               'Get-ValentiaFileEncoding', 'Get-ValentiaGroup', 
               'Get-ValentiaRebootRequiredStatus', 'Get-ValentiaTask', 
               'Import-ValentiaCertificate', 'Import-ValentiaCertificatePFX', 
               'Initialize-ValentiaEnvironment', 'Invoke-Valentia', 
               'Invoke-ValentiaAsync', 'Invoke-ValentiaClean', 
               'Invoke-ValentiaDeployGroupRemark', 
               'Invoke-ValentiaDeployGroupUnremark', 'Invoke-ValentiaDownload', 
               'Invoke-ValentiaSed', 'Invoke-ValentiaSync', 'Invoke-ValentiaUpload', 
               'Invoke-ValentiaUploadList', 'New-ValentiaGroup', 
               'New-ValentiaFolder', 'New-ValentiaDynamicParamMulti', 
               'New-ValentiaOSUser', 'Ping-ValentiaGroupAsync', 
               'Remove-ValentiaCertificate', 'Remove-ValentiaCertificatePFX', 
               'Set-ValentiaCredential', 'Set-ValentiaLocation', 
               'Set-ValetntiaWSManConfiguration', 'Show-ValentiaCertificate', 
               'Show-ValentiaConfig', 'Show-ValentiaGroup', 
               'Show-ValentiaPromptForChoice', 'Write-ValentiaVerboseDebug'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = 'valentia'

# Aliases to export from this module
AliasesToExport = 'Task', 'Vale', 'Valea', 'Upload', 'UploadL', 'Sync', 'Download', 'Go', 'Clean', 
               'Reload', 'Target', 'PingAsync', 'Sed', 'ipremark', 'ipunremark', 'Cred', 
               'Rename', 'DynamicParameter', 'Initial'

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess
# PrivateData = ''

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


