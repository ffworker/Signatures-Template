$Server = "your.ad.server.local"
$DomainSelection = "YourDomain"
$UserSelection = "ALL"
$UseOutlookFolder = $false

$TemplateFiles = @{
    "YourDomain" = ".\Templatefiles\YourDomain_template.html"
}

$ResourceFolders = @{
    "YourDomain" = ".\assets\YourDomain"
}

$UserDataOverride = @{
    givenName       = "Max"
    sn              = "Mustermann"
    mail            = "max.mustermann@example.com"
    department      = "IT Support"
    telephoneNumber = "+49 123 4567890"
    sAMAccountName  = "mmustermann"
}