param vnetName string = 'myVirtualNetwork'
param vnetLocation string = 'swedencentral'
param vnetAddressPrefix string = '10.0.0.0/16'
param subnetName string = 'default'
param subnetAddressPrefix string = '10.0.0.0/24'

resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: vnetName
  location: vnetLocation
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnetAddressPrefix
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetAddressPrefix
        }
      }
    ]
  }
}

output vnetId string = vnet.id
