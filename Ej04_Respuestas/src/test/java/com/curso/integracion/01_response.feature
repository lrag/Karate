#Feature
Feature: Elobjeto response.
  Bla bla blá.
  
Background:
* url 'http://localhost:8080'
 
Scenario: Response status
Given	path '/coches'
When method GET
#Esto es un aserto que comprueba que el status code sea el esperado
Then status 200
#Disponemos del status en una variable implícita
And print responseStatus

Scenario: Contenido de la respuesta
Given	path '/coches'
When method GET
Then status 200
#Response es una variable implícita
#Está presente al recibir la respuesta
#Normalmente es un json o un xml
And print response

Scenario: Response binario
Given	path '/coches'
When method GET
Then status 200
#Para las ocasiones en las que esperamos un binario como respuesta: (en este caso se trata de un texto)
#no es una propiedad de response: es otra variable implícita
And print responseBytes

Scenario: Response cookies
Given	path '/login'
When method POST
Then status 200
#no es una propiedad de response: es otra variable implícita
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



