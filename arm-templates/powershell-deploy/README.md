# Powershell Deploy

File deploy.ps allows you to deploy ARM template solution from local computer.

## Requirements

You need to instal Azure Powershell to run deployment scripts. You can find manual here:  
https://docs.microsoft.com/en-us/powershell/azure/install-az-ps

Or you can use Chocolatey package:  
https://community.chocolatey.org/packages/az.powershell

## Authentication and authorization

You need to create few environment variables beforehand to provide information about subscription and service principal.

Service Principal has to have Contributor role assigned at the subscription scope.

Following environment variables have to be in place:

* CLIENT_ID
* CLIENT_SECRET
* TENANT_ID
* SUBSCRIPTION_ID

To make changes to environment variables persistent on your machine, you can follow documentation in this article:  
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_environment_variables?view=powershell-7.1#saving-changes-to-environment-variables