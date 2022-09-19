#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Tipos

Given def numero = 1234
And def texto  = 'hola'

#Texto multilínea
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

#Todo lo que empiece por { o [ se interpreta como JSON. No son necesarias las comillas
And def json = { "marca" : "Fiat", "modelo" : "Uno 45s", "matricula" : "M-1234-JP" } 
And def obj = { marca : 'Fiat', modelo : "Uno 45s", matricula : "M-1234-JP" } 
#Multilínea
#Si no indicamos 'text' Karate interpretará los que hay entre las triples comillas como json o xml
And def json2 =
		"""
		{ 
			"marca" : "Fiat", 
			"modelo" : "Uno 45s", 
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
		<persona id='1'>
			<nombre>aaa</nombre>
			<direccion>bbb</direccion>
			<telefono>ccc</telefono>
		</persona>
		"""
#
#CSV: Convierte un string con formato CSV a JSON
#
And text csv = 
		"""
		titulo,director
		Alien,Ridley Scott
		2001,Stanley Kubrik
		"""
And csv csv_a_json = csv
And print csv
And print csv_a_json

#
#YAML: Convierte un string con formato YAML a JSON
#
#Cuidado con los tabuladores en un yaml
And text yaml =
		"""
		producto:
		  nombre: "Fleje"
		  fabricante: "Ibérica de Flejes, S.A."
		"""
And yaml yaml_a_json = yaml
And print yaml
And print yaml_a_json

#
#Utilizando expresiones
#
And def obj = { marca : 'Fiat', modelo : "Uno 45s", matricula : "M-1234-JP" }  
And def v = { coche : #(obj) }
And def w = <movida>#(obj)</movida>
And def x = { marcaCoche : #(obj.marca) }

#Enclosed JS (solo para json)
And def y = ({ marcaCoche : obj.marca }) 
And def z = ({ coche : obj})

Then print v
Then print w
Then print x
And  print y
And  print z

