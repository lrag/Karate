#Feature
Feature: Obtiene un token de autenticacion
  Bla bla blá.

Scenario: ObtenerJWT
Given url 'http://localhost:8090/login'
#Accedemos a los parámetros con '__arg'. Como se recibe un json usamos la propiedad que nos interese 
#And form field username = __arg.username
#Y tambien karate.get(parametro)
#And form field password = karate.get('password')
#Con karate.get podemos indicar un valor por defecto cuando el parámetro no está presente
And form field username = karate.get('username', 'aaa')
And form field password = karate.get('password', 'bbb')

When method POST
Then status 200 
And def jwt = response
And print jwt
