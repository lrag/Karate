#Feature
Feature: Form fields
  Bla bla blá.
 
Background: 
*	url 'http://localhost:8080'

#Es raro que un api rest reciba valores de esta manera 
Scenario: Form fields 1
Given path '/login'
#Karate ya se encarga del header 'Content-Type: application/x-www-form-urlencoded'
And form field usuario = 'harry'
And form field password = 'callahan'
When method POST
Then status 200
And print response


#<form method="post" action="/coches">
#	<input type="text" name="login"/>
#	<input type="text" name="pw"/>
#	<input type="submit" value="Dale"/>
#</form>
#
#POST /login
#Content-Type : multipart/form-data
#--------------
#login=aaa&pw=bbb

