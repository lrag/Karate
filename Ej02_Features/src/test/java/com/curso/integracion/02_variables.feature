#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Definiendo variables
 
#Aqui vemos como given nos sirve para establecer condiciones iniciales:

#Given def variable1 = 1234
#Given def variable2 = 'hola'
#Given def variable3 = 'que tal'

Given def variable1 = 1234
And   def variable2 = 'hola'
And   def variable3 = 'que tal'

#Print
Then print variable1+' '+variable2+' '+variable3
