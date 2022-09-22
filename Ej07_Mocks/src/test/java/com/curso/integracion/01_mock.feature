@ignore
Feature: Karate Netty Server

Background:

#
#Definiremos primero los escenarios más concretos
#

Scenario: pathMatches('/saludador') && methodIs('get')
		* def response = 'Hola mundo'

Scenario: pathMatches('/coches') && methodIs('get') && paramExists('year') && paramExists('marca')
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

Scenario: pathMatches('/coches/{idCoche}') && methodIs('get')
		#Por defecto el status es 200
    #* def responseStatus = 200
    * def response = { id:2, marca : 'Citroën',   modelo:'Ami 6' }
    
Scenario: pathMatches('/coches') && methodIs('post')
    * def responseStatus = 201

Scenario: pathMatches('/coches') && methodIs('delete')
    * def responseStatus = 200
    
Scenario: pathMatches('/clientes/{idCliente}/facturas') && methodIs('get')
		* def response = [ { codigo : 'FAC-1' }, { codigo : 'FAC-2' }, { codigo : 'FAC-3' } ] 
    
Scenario: pathMatches('/productos') && methodIs('get') && headerContains('Authorization', 'Basic abcd') && headerContains('accept', 'application/json')
		* def responseStatus = 200

Scenario: pathMatches('/login') && methodIs('post')
		* def responseHeaders = { 'Set-Cookie': 'SESSIONID=1A530637289A03B07199A44E8D531427;otraGalleta=VALOR' }

Scenario: pathMatches('/loginJWT') && methodIs('post')
		* def response = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEyMzQ1Njc4OTAiLCJsb2dpbiI6IkZpc3RybyIsInJvbCI6ImNsaWVudGUiLCJpYXQiOiIxNjYzODI4MzUxMDExIn0.U1B8BEyR35PGTkJhcIiOOo1Av21eqejGrlgYn33u4nY"
    
