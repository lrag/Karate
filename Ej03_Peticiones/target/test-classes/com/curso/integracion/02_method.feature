#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.

# 
#get, post, put, delete, patch, options, head, connect, trace
#mayúsculas y minúsculas a discreccion
# 
Scenario: GET
Given	url 'http://localhost:8080/coches'
When method GET
Then status 200 

Scenario: POST
Given	url 'http://localhost:8080/coches'
When method POST
Then status 201

Scenario: DELETE
Given	url 'http://localhost:8080/coches'
When method DELETE
Then status 200