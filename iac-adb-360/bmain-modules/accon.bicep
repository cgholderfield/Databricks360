param baseName string
param env string
param location string
param locationshortname string
param tag string = baseName


resource adbac 'Microsoft.Databricks/accessConnectors@2023-05-01'={
  name: 'adbac-${locationshortname}-${baseName}-${env}'
  location: location
  tags: {
    environment: env
    costCenter: tag
  }
  identity: {
    type: 'SystemAssigned'

  }
  properties:{
    
  }
}


output adbacid string = adbac.id
output adbacpid string = adbac.identity.principalId

