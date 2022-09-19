#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Background: 
#La url será la misma en todos los escenarios
*	url 'https://jsonplaceholder.typicode.com'
 
Scenario: Enviar una petición para obtener los posts
Given path '/posts'
When method GET
Then status 200

Scenario: Otro
Given def id = 2
#Se pueden utilizar expresiones al definir el path
And path '/users/'+id
When method GET
Then status 200
And print response

Scenario: Y otro
Given def id = 2
#Otra manera, quizás más legible. Se pueden añadir mas valores a la ruta
And path 'users', id
When method GET
Then status 200
And print response
