# CRM PowerShell Library
# Copyright (C) 2017 Arjan Meskers / AMSoftware
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
@{
	# Version number of this module.
	ModuleVersion = '1.4.1.0'
	# ID used to uniquely identify this module
	GUID = '1e7f1ebc-e035-4d73-86af-3c07a6a85260'
	# Author of this module
	Author = 'Arjan Meskers'
	# Company or vendor of this module
	CompanyName = 'AMSoftware'
	# Copyright statement for this module
	Copyright = 'Copyright (C) 2017 Arjan Meskers / AMSoftware'
	# Description of the functionality provided by this module
	Description = 'Manage Dynamics CRM metadata and content, and administer the organization. Use on-premises and online from Dynamics CRM 2011 to Dynamics 365 CRM.'
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '3.0'
	# Minimum version of Microsoft .NET Framework required by this module
	DotNetFrameworkVersion = '4.0'
	# Minimum version of the common language runtime (CLR) required by this module
	CLRVersion = '4.0'
	# Assemblies that must be loaded prior to importing this module
	RequiredAssemblies = @('AMSoftware.Crm.Powershell.Commands.dll', 'AMSoftware.Crm.Powershell.Common.dll', 'Microsoft.Xrm.Sdk.dll', 'Microsoft.Crm.Sdk.Proxy.dll')
	# Type files (.ps1xml) to be loaded when importing this module
	TypesToProcess = 'AMSoftware.Crm.Powershell.Types.ps1xml'
	# Format files (.ps1xml) to be loaded when importing this module
	FormatsToProcess = 'AMSoftware.Crm.Powershell.Format.ps1xml'
	# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
	NestedModules = @('AMSoftware.Crm.Powershell.Commands.dll')
	# Cmdlets to export from this module
	CmdletsToExport = 'Add-CrmAttribute', 'Add-CrmBigIntAttribute', 'Add-CrmBooleanAttribute', 'Add-CrmContent', 'Add-CrmDateTimeAttribute', 'Add-CrmDecimalAttribute', 'Add-CrmDoubleAttribute', 'Add-CrmEntityKey', 'Add-CrmImageAttribute', 'Add-CrmIntegerAttribute', 'Add-CrmLanguage', 'Add-CrmMemoAttribute', 'Add-CrmMoneyAttribute', 'Add-CrmOptionSetAttribute', 'Add-CrmRelationship', 'Add-CrmSolutionComponent', 'Add-CrmStringAttribute', 
					  'Connect-CrmDeployment', 'Connect-CrmOrganization', 'Disable-CrmPluginStep', 'Enable-CrmPluginStep', 'Export-CrmSolution', 'Export-CrmTranslation', 'Export-CrmWebresource', 
					  'Get-CrmAttribute', 'Get-CrmBusinessUnit', 'Get-CrmContent', 'Get-CrmEntity', 'Get-CrmEntityKey', 'Get-CrmLanguage', 'Get-CrmOptionSet', 'Get-CrmOrganization', 'Get-CrmPlugin', 'Get-CrmPluginAssembly', 'Get-CrmPluginStep', 'Get-CrmPluginStepImage', 'Get-CrmPrincipalRoles', 'Get-CrmProcess', 'Get-CrmPublisher', 'Get-CrmRelationship', 'Get-CrmRole', 'Get-CrmRolePrincipals', 'Get-CrmServiceEndpoint', 'Get-CrmSolution', 'Get-CrmSolutionComponent', 'Get-CrmTeam', 'Get-CrmTeamUsers', 'Get-CrmUser', 'Get-CrmUserTeams', 'Get-CrmWebresource', 
					  'Import-CrmSolution', 'Import-CrmTranslation', 'Import-CrmWebresource', 'Invoke-CrmRequest', 'Join-CrmContent', 
					  'New-CrmBusinessUnit', 'New-CrmEntity', 'New-CrmOptionSet', 'New-CrmOptionSetValue', 'New-CrmPublisher', 'New-CrmRole', 'New-CrmSolution', 'New-CrmTeam', 'New-CrmUser', 'New-CrmWebresource', 
					  'Publish-CrmComponent', 'Register-CrmPlugin', 'Register-CrmPluginStep', 'Register-CrmPluginStepImage', 'Register-CrmServiceEndpoint', 
					  'Remove-CrmAttribute', 'Remove-CrmContent', 'Remove-CrmEntity', 'Remove-CrmEntityKey', 'Remove-CrmLanguage', 'Remove-CrmOptionSet', 'Remove-CrmOptionSetValue', 'Remove-CrmPrincipalRoles', 'Remove-CrmRelationship', 'Remove-CrmRolePrincipals', 'Remove-CrmSolutionComponent', 'Remove-CrmTeamUsers', 'Remove-CrmUserParent', 'Remove-CrmUserTeams', 'Remove-CrmWebresource', 
					  'Set-CrmAttribute', 'Set-CrmBigIntAttribute', 'Set-CrmBooleanAttribute', 'Set-CrmContent', 'Set-CrmDateTimeAttribute', 'Set-CrmDecimalAttribute', 'Set-CrmDoubleAttribute', 'Set-CrmEntity', 'Set-CrmImageAttribute', 'Set-CrmIntegerAttribute', 'Set-CrmMemoAttribute', 'Set-CrmMoneyAttribute', 'Set-CrmOptionSet', 'Set-CrmOptionSetAttribute', 'Set-CrmOptionSetValue', 'Set-CrmOwner', 'Set-CrmPlugin', 'Set-CrmPluginStep', 'Set-CrmPluginStepImage', 'Set-CrmPrincipalRoles', 'Set-CrmRelationship', 'Set-CrmRelationshipCascadeConfig', 'Set-CrmRolePrincipals', 'Set-CrmServiceEndpoint', 'Set-CrmStringAttribute', 'Set-CrmTeamUsers', 'Set-CrmUserTeams', 'Set-CrmWebresource', 
					  'Split-CrmContent', 'Start-CrmProcess', 'Stop-CrmProcess', 'Test-CrmSolution', 'Test-CrmSolutionComponent', 'Unregister-CrmPlugin', 'Unregister-CrmPluginAssembly', 'Unregister-CrmPluginStep', 'Unregister-CrmPluginStepImage', 'Unregister-CrmServiceEndpoint', 'Use-CrmLanguage', 'Use-CrmSolution'
	# Private data to pass to the module specified in RootModule/ModuleToProcess
	# PrivateData = ''
	PrivateData = @{ 
		PSData = @{
			# Tags applied to this module. These help with module discovery in online galleries.
			Tags = 'dynamics-crm', 'dynamics-365'
			# A URL to the license for this module.
			LicenseUri = 'https://github.com/AMSoftwareNL/crmpowershell/blob/master/LICENSE'
			# A URL to the main website for this project.
			ProjectUri = 'https://github.com/AMSoftwareNL/crmpowershell'
			# ReleaseNotes of this module
			ReleaseNotes = 'https://github.com/AMSoftwareNL/crmpowershell/releases/tag/v1.4.1.0'
		} 
	}
	# HelpInfo URI of this module
	HelpInfoURI = 'http://www.amsoftware.nl/tools/crmpowershell/help/'
}

