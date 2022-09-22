#Feature
Feature: Obtiene un token de autenticacion
  Bla bla blá.

Scenario: ObtenerJWT
Given url 'http://localhost:8090/login'
And form field username = 'Mulder'
And form field password = 'fox'
When method POST
Then status 200 
And def jwt = response
And def dato1 = 10
And def dato2 = 20
And print jwt

#Si alguien hace un call a este feature se devuelve un json cuyas propiedades son las variables declaradas
#Tambien se incluyen las variables implícitas
#{
#	jwt : 'asdfghjkl',
#	dato1 : 10,
#	dato2 : 20,
# response : lo que sea
# responseHeaders :
# ...
#}