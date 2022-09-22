#Feature
Feature: Elobjeto response.
  Bla bla blá.
  
Background:
* url 'http://localhost:8080'
 
Scenario: Response status
Given	path '/coches'
When method GET
#Despues de haber enviado la peticion disponemos del objeto 'response'
#Es el objeto que utilizaremos para hacer las comprobaciones
#
#Esto es un aserto que comprueba que el status code sea el esperado
#Para comprobar el status de la respuesta disponemos de la palabra reservada 'status'
Then status 200


Scenario: Contenido de la respuesta
Given	path '/coches'
When method GET
Then status 200
#Response es una variable implícita
#Está disponible al recibir la respuesta
#Para cuando el body de la respuesta tiene un json o un xml
And print response


Scenario: Response binario
Given	path '/coches'
When method GET
Then status 200
#Para las ocasiones en las que esperamos un binario como respuesta: (en este caso se trata de un texto)
#Nos entrega la respuesta 'en bruto'
#no es una propiedad de response: es otra variable implícita
And print responseBytes

Scenario: Response cookies
Given	path '/login'
When method POST
Then status 200
#no es una propiedad de response: es otra variable implícita
#ResponsCookies es un array asociativo en el que la clave es el nombre de la cookie
And print responseCookies
And print responseCookies['SESSIONID']
And print responseCookies['SESSIONID'].value
And print responseCookies['SESSIONID'].domain

Scenario: Response headers
Given	path '/coches'
When method GET
Then status 200
#no es una propiedad de response: es otra variable implícita
And print responseHeaders
And print responseHeaders['content-type']
#No olvidemos que los header pueden tener múltiples valores
#Cuidado que es 'case sensitive'
And print responseHeaders['content-type'][0]



