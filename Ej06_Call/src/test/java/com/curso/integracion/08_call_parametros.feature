#Feature
Feature: Obtiene un token de autenticacion
  Bla bla blá.

Background:
# En este caso no es necesario obtener un token nuevo por cada escenario
# def ejecucion = callonce read('07_obtener_JWT_parametros.feature') 
* def ejecucion = callonce read('07_obtener_JWT_parametros.feature') { username : 'Mulder', password : 'fox' }
* def jwt = ejecucion.jwt
* url 'http://localhost:8090'


Scenario: Listar peliculas
Given path '/peliculas'
And header Authorization = 'Bearer '+jwt
When method GET
Then status 200 
And print response

Scenario: Buscar pelicula
Given path '/peliculas/2'
And header Authorization = 'Bearer '+jwt
When method GET
Then status 200 
And print response

