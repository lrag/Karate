#Feature
Feature: Features.
  Bla bla blá.
 
Scenario: funciones javascript

#No hay una palabra reservada para definir una función. Se utiliza def
Given def saludador = function(nombre) { return 'Hola '+nombre }

#Invocamos la función colocando los paréntis a la variable que la guarda
And def saludo = saludador('LRAG')
And print saludo
And print saludador('Bart')

And def mayusculas = 
		"""
		function(txt){
			return txt.toUpperCase()
		}
		"""
And def param = 'Ringo Starr'
Then print mayusculas(param)

