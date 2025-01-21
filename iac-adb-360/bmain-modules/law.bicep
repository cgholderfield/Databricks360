param baseName string
param env string
param location string
param locationshortname string
param tag string = baseName

resource lawWorkspace 'Microsoft.OperationalInsights/workspaces@2022-10-01'= {
  name: 'law-${locationshortname}${baseName}-${env}'
  location: location
  tags: {
    environment: env
    costcenter: tag
  }  
  properties: {
    retentionInDays: 30
  }
}


output lawid string = lawWorkspace.id
