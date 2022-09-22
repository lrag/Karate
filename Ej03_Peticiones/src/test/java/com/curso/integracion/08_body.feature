#Feature
Feature: Body
  Bla bla blá.
 
Background: 
*	url 'http://localhost:8080'
 
Scenario: Body
Given path '/coches'
And def coche = 
		"""
		{
			marca : 'Renault',
			modelo : '4'
		}
		"""
#Con 'request' indicamos que queremos añadir al body
#And request { marca : 'Renault', modelo : '4' }

#Si lo que estamos añadiendo al body es un json o un XML karate se encarga de añadir el content type
#And header Content-Type = 'application/json'

#Podemos utilizar variables y expresiones 
And request coche
When method POST
Then status 201
And print response









