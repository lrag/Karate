#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Background: 
*	url 'http://localhost:8080'
#Estos headers se utilizarán en todos los escenarios
#Aqui content-type está entre comillas por el guión
* configure headers = { 'Content-Type' : 'application/json' }
 
Scenario: Enviar una petición para obtener los posts
Given path '/productos'
And header Authorization = 'Basic abcd'
And header Accept = 'application/json'
When method GET
Then status 200
And print response

Scenario: Enviar una petición para obtener los posts
Given path '/productos'
#Otra manera
And headers { Authorization : 'Basic abcd', Accept : 'application/json' }
When method GET
Then status 200
And print response
