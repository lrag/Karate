#Feature
Feature: Elobjeto response.
  Bla bla blá.

 
Scenario: Match ==
Given	def dato = 50
#Match utiliza doble igual
Then match dato == 50

Scenario: Match !=
Given	def dato = 50
Then match dato != 51

Scenario: Match contains
Given	def texto = "Hola que tal"
Then match texto contains 'que'

Scenario: Match !contains
Given	def texto = "Hola que tal"
Then match texto !contains 'ke'

Scenario: Match arrays
Given	def array = [ 1, 2, 3, 4, 5 ]
Then match array contains 3
And match array contains [ 3, 4 ]
#El orden no importa
Then match array contains [ 4, 3 ]



 

