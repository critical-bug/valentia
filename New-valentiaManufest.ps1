﻿$script:module = "valentia"
$script:moduleVersion = "0.3.3"
$script:description = "PowerShell Remote deployment library for Windows Servers";
$script:copyright = "28/June/2013 -"
$script:RequiredModules = @()

$script:functionToExport = @(
        "Edit-ValentiaConfig",
        "Get-ValentiaCredential",
        "Get-ValentiaGroup", 
        "Get-ValentiaModuleReload", 
        "Get-ValentiaRebootRequiredStatus",
        "Get-ValentiaTask", 
        "Initialize-ValentiaEnvironment",
        "Invoke-Valentia",
        "Invoke-ValentiaAsync",
        "Invoke-ValentiaClean",
        "Invoke-ValentiaCommand",
        "Invoke-ValentiaCommandParallel", 
        "Invoke-ValentiaDeployGroupRemark",
        "Invoke-ValentiaDeployGroupUnremark",
        "Invoke-ValentiaDownload",
        "Invoke-ValentiaParallel", 
        "Invoke-ValentiaSync",
        "Invoke-ValentiaUpload", 
        "Invoke-ValentiaUploadList", 
        "New-ValentiaCredential", 
        "New-ValentiaGroup",
        "New-ValentiaFolder",
        "Set-ValentiaHostName",
        "Set-ValentiaLocation", 
        "Show-ValentiaConfig",
        "Show-ValentiaGroup"
)

$script:variableToExport = "valentia"
$script:AliasesToExport = @("Task",
    "Valep","CommandP",
    "Vale","Command",
    "Valea",
    "Upload","UploadL",
    "Sync",
    "Download",
    "Go",
    "Clean","Reload",
    "Target",
    "ipremark","ipunremark",
    "Cred",
    "Rename",
    "Initial"
)

$script:moduleManufest = @{
    Path = "$module.psd1";
    Author = "guitarrapc";
    CompanyName = "guitarrapc"
    Copyright = ""; 
    ModuleVersion = $moduleVersion
    Description = $description
    PowerShellVersion = "3.0";
    DotNetFrameworkVersion = "4.0";
    ClrVersion = "4.0.30319.17929";
    RequiredModules = $RequiredModules;
    RootModule = "$module.psm1";
    CmdletsToExport = "*";
    FunctionsToExport = $functionToExport
    VariablesToExport = $variableToExport;
    AliasesToExport = $AliasesToExport;
}

New-ModuleManifest @moduleManufest