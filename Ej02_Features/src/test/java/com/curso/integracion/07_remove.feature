#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Tipos

Given def avionJson =
		"""
		{ 
			id         : 74,			
			fabricante : {
					 id     : 18,
			 		 nombre : 'Grumman'
			 	},
			modelo     : 'F-14', 
			year       : 1974 
		} 		
		"""
		
#A ver que sale
And print avionJson
And remove avionJson.id
And remove avionJson.fabricante.id
Then print avionJson

#En este ejemplo eliminamos la propiedad de un documento que está en un array
Given def aviones =
		"""
		[		{ 
			id         : 4,
			modelo     : 'F-14', 
		}, 		
		{ 
			id         : 7,
			modelo     : 'Spitfire', 
		}, 		
		{ 
			id         : 74,
			modelo     : 'BF-109', 
		} 	]		
		"""		
And remove aviones[1].id
And print aviones

#Tambien sirve para XML
Given def avionXML =
		"""
		<aviones>
			<avion>
				<id>74</id>
				<fabricante>
					<id>15</id>
					<nombre>Grumman</nombre>
				</fabricante>
				<year>1974</year>
			</avion>
		</aviones>		 
		"""
#A ver que sale
And print avionXML
#Esto es una consulta XPath
And remove avionXML/aviones/avion/fabricante/id
Then print avionXML

