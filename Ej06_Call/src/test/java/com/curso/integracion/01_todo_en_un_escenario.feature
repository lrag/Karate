#Feature
Feature: Obtiene un token de autenticacion
  Bla bla blá.

Scenario: Obtener JWT
Given url 'http://localhost:8090/login'
And form field username = 'Mulder'
And form field password = 'fox'
When method POST
Then status 200 
And def jwt = response
#Si el token viniera en un header lo recogeríamos así:
#And def jwt = responseHeaders['Authorization']
And print response

Given url 'http://localhost:8090/peliculas'
And header Authorization = 'Bearer '+jwt
When method GET
Then status 200 
And print response

Given url 'http://localhost:8090/peliculas/2'
And header Authorization = 'Bearer '+jwt
When method GET
Then status 200 
And print response

