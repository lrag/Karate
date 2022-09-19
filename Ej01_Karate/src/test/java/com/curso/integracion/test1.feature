#
#Gherkin, de Cucumber
#

Feature: Pruebas de tal recurso en tal api.
  Bla bla blá.
  
Scenario: Enviar una petición para obtener los usuarios
Given url 'https://jsonplaceholder.typicode.com/users'
When method GET
Then status 200