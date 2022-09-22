#Feature
Feature: Obtiene un token de autenticacion
  Bla bla blá.

Background:
# En este caso no es necesario obtener un token nuevo por cada escenario
* def ejecucion = callonce read('04_obtener_JWT.feature') 
* def jwt = ejecucion.jwt
* url 'http://localhost:8090'

@Ignore
@InsertarCoche
Scenario:
  Given url 'http://localhost:8090'
  And path '/peliculas'
  And header Authorization = 'Bearer '+jwt
  And request { titulo: '#(titulo)', director: '#(director)' }
  When method post
  Then status 201
  
Scenario:
* table peliculas 
  | titulo         | director        |
  | 'Titulo 10'    | 'Director 10'   |
  | 'Titulo 11'    | 'Director 11'   |
  | 'Titulo 12'    | 'Director 12'   |
* def ejecucion = call read('@InsertarCoche') peliculas
* def peliculasCreadas = $ejecucion[*].response
* match each peliculasCreadas == { id: '#number', titulo: '#string', director: '#string', genero : '#ignore', year: '#ignore' }
* match peliculasCreadas[*].titulo contains only ['Titulo 10', 'Titulo 11', 'Titulo 12']