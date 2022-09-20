#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Tipos
#Con def podemos asignar como valor a la variable:
#-números
#-cadenas de texto de una única línea

Given def numero = 1234
And def texto  = 'hola áéíóú'

#Texto multilínea
#Karate interpreta los bloques multilínea cono JSON o XML
#Si el contenido del bloque no está en ese formato lo indicamos definiendo la variabla con 'text'
And text parrafo = 
		"""
		aaaaaa
		bbbbbb
		cccccc
		dddddd
		"""
And print parrafo


#
#JSON 
#

#Todo lo que empiece por { o [ se interpreta como JSON. 
And def json = { "marca" : "Fiat", "modelo" : "Uno 45s", "matricula" : "M-1234-JP" } 
#No son necesarias las comillas en el nombre de las propiedades
And def obj  = { marca   : 'Fiat', modelo   : "Uno 45s", matricula   : "M-1234-JP" } 
#Multilínea
#Si no indicamos 'text' Karate interpretará los que hay entre las triples comillas como json o xml
And def json2 =
		"""
		{ 
			id				  : 1
			marca       : "Fiat", 
			modelo      : "Uno 45s", 
			"matricula" : "M-1234-JP" 
		} 
		"""

#
#XML
#

#Todo lo que empiece por < se tratará como un XML sin necesidad de comillas
And def xml = <persona id='1'><nombre>aaa</nombre><direccion>bbb</direccion><telefono>ccc</telefono></persona>
And def xml2 = 
		"""
		<coche id='1'>
			<marca>Fiat</marca>
			<modelo>Uno 45s</modelo>
			<matricula>M-1234-JP</matricula>
		</coche>
		"""
		
#Con text definimos una variable que se tratará como una cadena de texto
#And text jsonTratadoComoTexto = "{ marca : 'aaa' }" 		
		
#
#CSV: Convierte un string con formato CSV a JSON
#
#And text csv = 
And csv csv_a_json = 
		"""
		titulo,director
		Alien,Ridley Scott
		2001,Stanley Kubrik
		"""
And print csv_a_json

#
#YAML: Convierte un string con formato YAML a JSON
#
#Cuidado con los tabuladores en un yaml
And yaml yaml_a_json = 
		"""
		producto:
		  nombre: "Fleje"
		  fabricante: "Ibérica de Flejes, S.A."		  
		"""
And print yaml_a_json

#
#Expresiones: útil para componer documentos 
#
And def obj = { marca : 'Fiat', modelo : "Uno 45s", matricula : "M-1234-JP" }  

And def exp1 = { coche : #(obj) }
And def exp2 = <movida>#(obj)</movida>
And def exp3 = { marcaCoche : #(obj.marca) }

#Enclosed JS (solo para json)
And def exp4 = ({ marcaCoche : obj.marca }) 
And def exp5 = ({ coche : obj})

Then print exp1
And  print exp2
And  print exp3
And  print exp4
And  print exp5

