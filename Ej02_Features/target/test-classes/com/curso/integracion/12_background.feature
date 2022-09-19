#Feature
Feature: Features.
  Bla bla blá.

#Backgrond se ejecuta antes de cada escenario del feature
Background:
* print "Background"
* def dato1 = 1

Scenario: Escenario 1
Given def txt = "Escenario 1"
Then print dato1

Scenario: Escenario 2
Given def txt = "Escenario 2"
Then print dato1

Scenario: Escenario 3
Given def txt = "Escenario 3"
Then print dato1
