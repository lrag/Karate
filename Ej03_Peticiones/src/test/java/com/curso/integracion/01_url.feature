#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Enviar una petición para obtener los posts
#url no es una variable como las demás. No tiene '='
Given	url 'https://jsonplaceholder.typicode.com/posts'
When method GET
Then status 200

Scenario: Otro
Given def id = 2
#Podemos utilizar expresiones para crear la url
And url 'https://jsonplaceholder.typicode.com/users/'+id
When method GET
Then status 200
And print response
