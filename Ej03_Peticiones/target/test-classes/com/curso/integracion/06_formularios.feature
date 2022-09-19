#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Background: 
*	url 'http://localhost:8080'
 
Scenario: Enviar una petición para obtener los posts
Given path '/login'
#Karate ya se encarga del header 'Content-Type: application/x-www-form-urlencoded'
And form field usuario = 'harry'
And form field password = 'callahan'
When method POST
Then status 200
And print response
