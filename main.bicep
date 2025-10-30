param serverName string

resource sqlServer 'Microsoft.Sql/servers@2022-05-01-preview' existing = {
  name: serverName
}

resource aadOnlyAuth 'Microsoft.Sql/servers/azureADOnlyAuthentications@2022-05-01-preview' = {
  name: '${sqlServer.name}/default'
  properties: {
    azureADOnlyAuthentication: true
  }
}
