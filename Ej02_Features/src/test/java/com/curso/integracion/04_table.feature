#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Tablas

Given table personas 
| nombre           | direccion       | telefono |
| 'Harry Callahan' | 'C/Falsa, 123'  | 555      |
| 'Jules Maigret'  | 'C/Falsé, 123'  | 123      |
| 'John McClane'   | 'C/False, 123'  | 456      |

And def dato1 = 50
And def dato2 = 'AAA'
And def dato3 = 75
And def dato4 = 'BBB'
And table valores 
| valor1 | valor2 |
| dato1  | dato2  |
| dato3  | dato4  |

#personas es un array de objetos (serializado a json)
Then print personas
And print valores