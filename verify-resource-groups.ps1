1. Check the current Azure context
Get-AzContext
2. List the Resource Groups created for M1
Get-AzResourceGroup |
Where-Object {
$_.ResourceGroupName -in @(
"rg-m1-portal-weu",
"rg-m1-ps-northeu",
"rg-m1-cli-westeu"
)
} |
Select-Object ResourceGroupName, Location, Tags
3. Check the resource lock
Get-AzResourceLock `
-ResourceGroupName "rg-m1-portal-weu" |
Select-Object Name, Level, ResourceGroupName
</CodeBlock>
