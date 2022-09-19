#Feature
Feature: Features.
  Bla bla blá.
 
Scenario: funciones javascript

#Podemos instanciar cualquier clase java

#Métodos dinámicos
Given def saludar = 
		"""
		function(nombre){
			let Utilidades = Java.type('com.curso.integracion.Utilidades')
			let util = new Utilidades()
			//Invocando métodos dinámicos			
			return util.saludar(nombre)
		}
		"""
And print saludar("LRAG")		
		
#Métodos estáticos
And def mayusculas = 
		"""
		function(txt){
			let Utilidades = Java.type('com.curso.integracion.Utilidades')
			//Invocando métodos estáticos
			return Utilidades.mayusculas(txt)
		}
		"""
And def param = 'Ringo Starr'
And print mayusculas(param)

#Invocando un método que recibe/devuelve objetos
And def persona =
		"""
		{
			nombre    : 'aaa',
			direccion : 'bbb',
			telefono  : 'ccc'
		}
		"""
And def metodo =
		"""
		function(persona){
			let Utilidades = Java.type('com.curso.integracion.Utilidades')
			let util = new Utilidades()
			return util.metodo(persona)		
		}
		"""		
Then print metodo(persona)

