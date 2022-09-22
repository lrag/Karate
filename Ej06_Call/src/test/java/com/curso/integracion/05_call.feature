#Feature
Feature: Obtiene un token de autenticacion
  Bla bla blá.

Background:
# Ruta absoluta o relativa
# def ejecucion = call read('classpath://com/curso/integracion/04_obtener_JWT.feature') 
* def ejecucion = call read('04_obtener_JWT.feature') 
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

