# List resource groups with tags
resourceGroups=$(az group list --query "[].{Name:name, Tags:tags}" --output table)

# Iterate through each resource group
for rg in $resourceGroups; do
    echo "Resource Group: $rg"
    rgTags=$(echo $rg | awk '{print $2}')
    echo "Tags: $rgTags"
    # List the resources in the group along with their tags
    rgName=$(echo $rg | awk '{print $1}')
    resources=$(az resource list --resource-group $rgName --query "[].{Name:name, Type:type, Tags:tags}" --output table)
    echo "$resources"
done

