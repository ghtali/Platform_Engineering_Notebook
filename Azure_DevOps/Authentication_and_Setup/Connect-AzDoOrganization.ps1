# I have chosen to authenticate using a Personal Access Token (PAT) for this script.
# The reason for using PAT is its simplicity and efficiency in non-interactive sessions,
# such as automation scripts, pipelines, or when working across different systems.
# However, you can opt for Azure AD authentication if you prefer, which I'll mention below.

# Prerequisites
# We need the Az.DevOps module to interact with Azure DevOps.
# If the module is not installed, you can uncomment the Install-Module line below.

# Install-Module -Name Az.DevOps -Scope CurrentUser -Force

# You may read more here:
# https://learn.microsoft.com/bs-latn-ba/powershell/azure/install-azure-powershell?view=azps-12.2.0&viewFallbackFrom=azps-10.4.1

# Step 1: Import the necessary module.
Import-Module Az.DevOps

# Step 2: Define the Azure DevOps organization URL.
# This URL should point to the organization you want to connect to.
$organizationUrl = "https://dev.azure.com/your-organization-name"

# Step 3: Authentication
# I prefer using a Personal Access Token (PAT) for authentication, as it allows for easy management
# of credentials in non-interactive scenarios. You can generate a PAT from your Azure DevOps account
# and set it here. If you'd rather use Azure AD credentials, you can modify the authentication method
# to fit that use case.

$personalAccessToken = "your-pat-token"

# Use the PAT for authentication by converting it to a secure string and creating a PSCredential object.
$credential = New-Object System.Management.Automation.PSCredential("", (ConvertTo-SecureString $personalAccessToken -AsPlainText -Force))

# Step 4: Connect to Azure DevOps.
# Here, we authenticate using the PAT credential. Depending on your setup, you may choose
# to use Azure AD login (Connect-AzAccount) for interactive authentication instead.
$connection = Connect-AzAccount -Credential $credential

# Step 5: Set the Azure DevOps organization context.
# This step establishes the organization and project context for subsequent operations.
Set-AzDevOpsOrganization -Organization $organizationUrl -ProjectName "Your-Project-Name"

# If you'd prefer to use Azure AD for authentication instead of a PAT, simply use:
# $connection = Connect-AzAccount
# This method is particularly useful in environments where single sign-on (SSO) is enabled
# or where PAT tokens are not desired for security reasons.

Write-Host "Successfully connected to Azure DevOps organization: $organizationUrl"

# You are now connected to your Azure DevOps organization, and you can begin interacting
# with it using subsequent commands in your script or pipeline.
