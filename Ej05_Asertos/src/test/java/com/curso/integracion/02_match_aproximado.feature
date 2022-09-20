#Feature
Feature: Asertos
  Bla bla blá.

#
#Comparaciones completas
#
 
Scenario: Match ==
Given	def dato = 50
#Match utiliza doble igual
Then match dato == 50

Scenario: Comparacion de arrays con match ==
#Se comparan todas las posiciones 
Given	def array = [ 1, 2, 3, 4, 5 ]
Then match array == [ 1, 2, 3, 4, 5 ]

Scenario: Match !=
Given	def dato = 50
Then match dato != 51

#
#Comparaciones con 'contains'
#

Scenario: Match contains

Given	def texto = "Hola que tal"
Then match texto contains 'que'


Scenario: Match !contains

Given	def texto = "Hola que tal"
Then match texto !contains 'ke'


Scenario: Match contains con arrays

Given	def array = [ 1, 2, 3, 4, 5 ]
#Podemos preguntar si el array contiene un elemento
And match array contains 3
#Podemos preguntar si el array contiene una lista de elementos
And match array contains [ 3, 4 ]
#El orden de la lista no importa
Then match array contains [ 4, 3 ]


Scenario: Match contains any

Given	def array = [ 1, 2, 3, 4, 5 ]
Then match array contains any [ 9, 22, 3 ]


Scenario: Match contains only

Given	def array = [ 1, 2, 3, 4, 5 ]
#Ha de contener unicamente los elementos indicados sin importar el orden (a diferencia de comprarar con '==' que si tiene en cuenta el orden)
Then match array contains only [ 5, 4, 3, 2, 1 ]


Scenario: Match contains deep
Given def documento = 
		"""
		{ 
			a: 1, 
			b: 2, 
			c: 3, 
			d: { 
				a: 1, 
				b: 2 
			} 
		}
		"""
And def valor = 
		"""
		{ 
			a: 1, 
			c: 3, 
			d: { 
				b: 2 
			} 
		}
		"""
#And match documento contains valor
Then match documento contains deep valor






 

