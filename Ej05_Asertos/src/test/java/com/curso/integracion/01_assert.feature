#Feature
Feature: Asertos
  Bla bla blá.


Scenario: Asert 1
Given url 'http://localhost:8080/saludador'
When  method GET
And   print response
Then  assert response == 'Hola mundo'
And   assert response.toUpperCase() == 'HOLA MUNDO'
#Longitud de una cadena de texto: .length
And   assert response.length == 10


Scenario: Assert 2
Given url 'http://localhost:8080/coches'
When method GET
#Comprobando la longitud de un array: .length
Then assert response.length == 3


#
#Assert compara de manera muy estricta. Cualquier diferencia, por ejemplo un espacio, da como resultado 'false'
#Para hacer asertos sobre documentos json o xml se utiliza 'match'
#
Scenario: Assert 3
Given url 'http://localhost:8080/coches/5'
And def cocheEsperado =
		"""
		{ 
			id: 2, 
			marca: 'Citroën',   
			modelo: 'Ami 6' 
		}		
		""" 
When method GET
Then assert response == cocheEsperado








