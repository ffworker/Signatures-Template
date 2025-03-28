$Server = "your.ad.server.local" # Needed to connect to your DC to get the $UserData(sn,givenname,department,description,telephonenumer,mail)
$DomainSelection = "YourDomain" # Specific the templates to load (if multiple are needed, add multiple)
$UserSelection = "ALL" # user1, user2
$UseOutlookFolder = $false # $true = "<C:>\Users\<username>\Appdata\Microsoft\Signatures

#Define your TemplateFolder 
$TemplateFiles = @{
    "YourDomain" = ".\Templatefiles\YourDomain_template.html"
}
#Define your Resourcefolder (Images etc.)
$ResourceFolders = @{
    "YourDomain" = ".\assets\YourDomain"
}

#Test-Data
$UserDataOverride = @{
    givenName       = "Max"
    sn              = "Mustermann"
    mail            = "max.mustermann@example.com"
    department      = "IT Support"
    telephoneNumber = "+49 123 4567890"
    sAMAccountName  = "mmustermann"
}
