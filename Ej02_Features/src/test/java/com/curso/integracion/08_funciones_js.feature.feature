#Feature
Feature: Features.
  Bla bla blá.
 
Scenario: funciones javascript

Given def saludador = function(nombre) { return 'Hola '+nombre }
And def saludo = saludador('LRAG')
And print saludo

And def mayusculas = 
		"""
		function(txt){
			return txt.toUpperCase()
		}
		"""
And def param = 'Ringo Starr'
Then print mayusculas(param)

