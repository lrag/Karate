#Feature
Feature: Features.
  Bla bla blá.
 
Scenario: funciones javascript

#Rutas absolutas
#

#Rutas relativas a la ubicación del Feature

#Json
Given def personas = read('../testdata/personas.json')
And print personas
And print personas[1].nombre

#XML
And def personas = read('../testdata/personas.xml')
And print personas

#Los demás formatos se convierten a JSON
And def personas = read('../testdata/personas.yaml')
Then print personas

#Es muy útil leer de un fichero y poder cambiarlo despues con replace
And def persona = read('../testdata/payload.json')
And replace persona
	  | token     | value       |
	  | nombre    | 'Fistro'    |
	  | direccion | 'Salamanca' |
	  | telefono  | '923123456' | 
Then print persona





