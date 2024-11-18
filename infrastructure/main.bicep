@allowed(['dev', 'prod'])
param environment string
param location string
targetScope = 'resourceGroup'

 module appService './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'workshop-dnazghbicep-flyingdutchy-${environment}'
    location: location
    environment: environment
  }
}
