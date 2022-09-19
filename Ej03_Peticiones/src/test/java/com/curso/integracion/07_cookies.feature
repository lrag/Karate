#Feature
Feature: Pruebas de jsonplaceholder typicode.
  Bla bla blá.
 
Background: 
*	url 'http://localhost:8080'
 
Scenario: Cookies
Given path '/coches'
And cookie SESSIONID = '1A530637289A03B07199A44E8D531427'
When method GET
Then status 200
And print response

Scenario: Cookies
Given path '/coches'
#Otra manera
And cookies { SESSIONID:'1A530637289A03B07199A44E8D531427', cookie1:'aaa', cookie2:'bbb' }
When method GET
Then status 200
And print response
