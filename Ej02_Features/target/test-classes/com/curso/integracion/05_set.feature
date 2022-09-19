#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Scenario: Tablas

Given set personas 
| path             | 0             | 1              |
| nombre           | "Bud Spencer" | "Terence Hill" |
| direccion.ciudad | "Salamanca"   | "C/Toro"       |
| direccion.calle  | "Santa Pola"  | "C/Elche"      |

#personas es un array de objetos (serializado a json)
Then print personas
