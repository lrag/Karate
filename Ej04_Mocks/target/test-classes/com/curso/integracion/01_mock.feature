@ignore
Feature:

Background:
* def uuid = function(){ return java.util.UUID.randomUUID() + '' }


#
#Definiremos primero los escenarios más concretos
#

Scenario: pathMatches('/coches') && methodIs('get') && paramExists('marca') && paramExists('year')
    * def response = 
    """
    [
	    { id:18, marca : #(paramValue('marca')), modelo : 'Modelo 1', year : #(paramValue('year')) },
	    { id:22, marca : #(paramValue('marca')), modelo : 'Modelo 2', year : #(paramValue('year')) }
    ]
    """  

Scenario: pathMatches('/coches') && methodIs('get')
    * def responseStatus = 200
    * def response = 
    """
    [
	    { id:1, marca : 'SEAT',    modelo:'850 Especial' },
	    { id:2, marca : 'Simca',   modelo:'1200 Ti' },
	    { id:3, marca : 'Renault', modelo:'8' }
    ]
    """

Scenario: pathMatches('/coches/2') && methodIs('get')
    * def response = { id:2, marca : 'Citroën',   modelo:'Ami 6' }
    
Scenario: pathMatches('/coches') && methodIs('post')
    * def responseStatus = 201

Scenario: pathMatches('/coches') && methodIs('delete')
    * def responseStatus = 200
    
Scenario: pathMatches('/productos') && headerContains('Authorization', 'Basic abcd')
		* def responseStatus = 200

Scenario: pathMatches('/login') && methodIs('post')
		* def responseStatus = 200
		* def responseHeaders = { 'Set-Cookie': 'SESSIONID=1A530637289A03B07199A44E8D531427' }
		
		    
    
