#Feature
Feature: Asertos
  Bla bla blá.
  
Scenario: Fuzzy matching
Given def usuario1 =
		"""
		{
			id       : 6,
			login    : 'aaa',
			password : 'bbb',
			email    : 'a@b.c'
		}
		"""
#id se ignorará durante la comparación
#login se comparará
#password se comparará
#email debe estar presente, pero no se comparará el valor
#fecha no puede estar presente
And def usuario2 =
		"""
		{
			id       : #ignore,
			login    : 'aaa',
			password : 'bbb',
			email    : #present,
			fecha    : #notpresent
		}
		"""
Then match usuario1 == usuario2 


Scenario: Comparacion de tipos
Given def producto1 =
		"""
		{
			id : 1,
			nombre : 'Chintáfono',
			activo : true,
			fabricante : {
					id : 10,
					nombre : 'Ibérica de Chintáfonoes S.A.'
				},
			caracteristicas : [ {
					texto : 'Caracteristica 1'
				}, {
					texto : 'Caracteristica 2'
				} ]
		}
		"""

And def producto2 =
		"""
		{ 
			id				  : #number,
			nombre      : #string, 
			activo      : #boolean, 
			fabricante  : #object,
			caracteristicas : #array
		} 
		"""		
Then match producto1 == producto2 		





			
			
			
			
			
			
			
			
			
			
			
			
			

