#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Sets

#Los set son como las tablas pero más útiles que estas cuando tenemos muchas propiedades
#Ademas con un set es más facil organizar la info en varios niveles utilizando la notación del '.'
Given set personas 
| path             | 0             | 1              |
| nombre           | "Bud Spencer" | "Terence Hill" |
| direccion.ciudad | "Salamanca"   | "C/Toro"       |
| direccion.calle  | "Santa Pola"  | "C/Elche"      |

#personas es un array de objetos (serializado a json)
Then print personas
