# List resource groups with tags
resourceGroups=$(az group list --query "[].{Name:name, Tags:tags}" --output json)

# Iterate through each resource group
for rg in $(echo $resourceGroups | jq -c '.[]'); do
    rgName=$(echo $rg | jq -r '.Name')
    rgTags=$(echo $rg | jq '.Tags')

    # List the resources in the group
    resources=$(az resource list --resource-group $rgName --query "[].{Name:name, Type:type, Tags:tags}" --output json)

    # Iterate through each resource and update its tags with the resource group's tags
    for resource in $(echo $resources | jq -c '.[]'); do
        resourceName=$(echo $resource | jq -r '.Name')
        resourceType=$(echo $resource | jq -r '.Type')

        # Update the resource's tags
        az resource tag --name $resourceName --resource-group $rgName --tags $rgTags
    done
done