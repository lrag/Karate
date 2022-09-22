#Feature
Feature: Asertos
  Bla bla blá.
  
Scenario: Match each
Given def personas =
		"""
		[
			{
				"id"        : 1,
				"nombre"    : "aaa",
				"direccion" : "bbb",
				"telefono"  : "ccc"
			},
			{
				"id"        : 2,
				"nombre"    : "TDD",
				"direccion" : "eee",
				"telefono"  : "fff"
			},
			{
				"id"        : 3,
				"nombre"    : "ggg",
				"direccion" : "hhh",
				"telefono"  : "iii"
			}
		]
		"""
Then match each personas == { id: '#number', nombre : '#string', direccion : '#string', telefono : '#string' } 
And  match each personas contains == { id: '#number' }


			

