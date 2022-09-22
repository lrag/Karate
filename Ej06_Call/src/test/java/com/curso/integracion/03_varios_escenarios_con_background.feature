#Feature
Feature: Api de peliculas
  Bla bla blá.

Background:
Given url 'http://localhost:8090'
And path '/login'
And form field username = 'Mulder'
And form field password = 'fox'
When method POST
Then status 200 
And def jwt = response
And header Authorization = 'Bearer '+jwt

Scenario: Listar peliculas
Given path '/peliculas'
When method GET
Then status 200 
And print response

Scenario: Buscar pelicula
Given path '/peliculas/2'
When method GET
Then status 200 
And print response

