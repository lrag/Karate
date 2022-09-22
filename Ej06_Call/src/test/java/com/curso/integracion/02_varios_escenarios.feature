#Feature
Feature: Obtiene un token de autenticacion
  Bla bla blá.

Scenario: Listar peliculas
Given url 'http://localhost:8090/login'
And form field username = 'Mulder'
And form field password = 'fox'
When method POST
Then status 200 
And def jwt = response
Given url 'http://localhost:8090/peliculas'
And header Authorization = 'Bearer '+jwt
When method GET
Then status 200 
And print response

Scenario: Buscar pelicula
Given url 'http://localhost:8090/login'
And form field username = 'Mulder'
And form field password = 'fox'
When method POST
Then status 200 
And def jwt = response
Given url 'http://localhost:8090/peliculas/2'
And header Authorization = 'Bearer '+jwt
When method GET
Then status 200 
And print response




