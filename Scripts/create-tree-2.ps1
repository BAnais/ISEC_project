
$computername="AD440GX"
$domainname="ad440domain.com"

Add-WindowsFeature AD-Domain-Services -IncludeManagementTools

Install-ADDSForest -DomainName $domainname -InstallDNS