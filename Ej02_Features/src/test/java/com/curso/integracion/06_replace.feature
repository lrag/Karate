#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Tipos

Given def cocheJson =
		"""
		{ 
			"marca" : <marca>, 
			"modelo" : <modelo>, 
			"matricula" : <matricula> 
		} 
		"""
#A ver que sale
And print cocheJson

And replace cocheJson.marca     = 'Ford'
And replace cocheJson.modelo    = 'Focus'
And replace cocheJson.matricula = '1234-BLM'
			
And print cocheJson

#YA se han reemplazado los <-> por los valores así que necesitamos otra variable
And def otroCocheJson =
		"""
		{ 
			"marca" : <marca>, 
			"modelo" : <modelo>, 
			"matricula" : <matricula> 
		} 
		"""
#Otra manera de sustituir los valores
#Tambien se pueden utilizar variables (matricula)
And def matricula = 'M-1234-IY'
And replace otroCocheJson
	  | token     | value     |
	  | marca     | 'Renault' |
	  | modelo    | '21 TXE'  |
	  | matricula | matricula | 
	  
And print otroCocheJson
