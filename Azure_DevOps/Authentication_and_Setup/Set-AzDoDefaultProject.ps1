# This script allows you to set a default Azure DevOps project for your current session.
# I chose this method because it makes the process of working with Azure DevOps smoother
# by avoiding the need to specify the project for each individual command. This is especially
# useful when you know you'll be interacting primarily with a single project during a session.

# Step 1: Set your Azure DevOps organization URL.
# This URL points to the organization you want to work within.
$organizationUrl = "https://dev.azure.com/your-organization-name"

# Step 2: Set your Azure DevOps project name.
# Replace this with the project name that you want to set as the default.
$defaultProjectName = "Your-Default-Project-Name"

# Step 3: Set the organization context.
# The Set-AzDevOpsOrganization cmdlet connects you to the specified organization
# and ensures the correct context is applied for all subsequent operations.
Set-AzDevOpsOrganization -Organization $organizationUrl -ProjectName $defaultProjectName

# Step 4: Set the default project for the session.
# Here, we use the Set-AzDevOpsProject cmdlet to define the default project for this session.
# By setting a default, you no longer need to specify the project in every command.
Set-AzDevOpsProject -Name $defaultProjectName

Write-Host "Default project set to: $defaultProjectName in organization: $organizationUrl"

# TIP:
# If you frequently work across multiple projects, consider using a similar script to switch
# between default projects during your session. This allows for greater flexibility without
# needing to adjust every command manually.

# I chose to use Set-AzDevOpsProject because it makes interacting with Azure DevOps more
# streamlined and less error-prone when scripting or running commands in a consistent project context.

# Now that the default project is set, all future Azure DevOps commands will automatically apply
# to this project unless you explicitly specify a different project in those commands. This keeps
# your workflow efficient and reduces repetition in your scripts.
