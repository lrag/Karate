#Feature
Feature: Peticiones 3.
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
#Otra manera, quizás más legible cuando en la ruta hay más de dos carpetas. 
And url 'http://localhost:8080'
And def idCliente = 15
#Esto es equivalente a 'clientes/15/facuras'
And path 'clientes', idCliente, 'facturas' 
When method GET
Then status 200
And print response
