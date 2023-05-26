param rgName string = 'myResourceGroup'
param rgLocation string = 'swedencentral'

targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: rgLocation
}
