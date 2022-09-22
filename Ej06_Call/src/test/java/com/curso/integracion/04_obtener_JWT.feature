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
And print jwt
