#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Background: 
#La url será la misma en todos los escenarios
*	url 'http://localhost:8080'
 
Scenario: Query parameters 1
Given path '/coches'
And param marca = 'Studebaker'
And param year = 1960
#Parámetros con múltiples valores
And param parametro = ['uno','dos','tres']
When method GET
Then status 200
And print response

Scenario: Query parameters 2
Given path '/coches'
#Una manera más económica
And params { marca:'Studebaker', year:1960, parametro:[1,2,3] }
When method GET
Then status 200
And print response

















