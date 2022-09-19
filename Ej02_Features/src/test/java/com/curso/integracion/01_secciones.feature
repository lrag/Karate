#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
#Cada feature puede tener varios escenarios
#Un escerario deberá hacer una única prueba funcional
#El nombre ha de ser descriptivo
Scenario: Enviar una petición para obtener los posts

#Dado: Situación inicial, valores
Given	url 'https://jsonplaceholder.typicode.com/posts'

#Cuando: llamada, ejecución de la prueba
When method GET

#Entonces: asertos
Then status 200