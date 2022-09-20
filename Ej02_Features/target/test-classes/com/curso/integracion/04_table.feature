#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Tablas

#Podriamos declarar estos valores como unjson, pero en formato tabla es más legible
Given table personas 
| nombre           | direccion       | telefono |
| 'Harry Callahan' | 'C/Falsa, 123'  | 555      |
| 'Jules Maigret'  | 'C/Falsé, 123'  | 123      |
| 'John McClane'   | 'C/False, 123'  | 456      |
#Karate interpreta la tabla y la transforma en JSON:
And print personas
And print personas[1]
And print personas[1].nombre
 
#Podemos utilizar variables dentro de un table
And def dato1 = 50
And def dato2 = 'AAA'
And def dato3 = 75
And def dato4 = 'BBB'
And table valores 
| valor1 | valor2 |
| dato1  | dato2  |
| dato3  | dato4  |
#personas es un array de objetos (serializado a json)
Then print valores