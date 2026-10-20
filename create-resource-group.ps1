# Azure Essentials M1
# Create a Resource Group with tags

# 1. Define the resource group settings
$resourceGroupName = "rg-m1-ps-northeu"
$location = "northeurope"

# 2. Define the tags
$tags = @{
    Environment = "Lab"
    Purpose     = "Training"
    Owner       = "Student"
}

# 3. Create the Resource Group
New-AzResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Tag $tags
