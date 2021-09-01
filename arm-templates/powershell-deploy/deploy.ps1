# Create credential for Service Principal
$User = $Env:CLIENT_ID
$PWord = ConvertTo-SecureString -String $Env:CLIENT_SECRET -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord

# Use Service Principal to login into specific subscription
Connect-AzAccount -Credential $Credential -Tenant $Env:TENANT_ID -SubscriptionId $Env:SUBSCRIPTION_ID -ServicePrincipal

# Create deployment with changes preview and prompt
New-AzDeployment -Location "North Europe" -TemplateFile "../subscription.json" -WhatIf -Confirm