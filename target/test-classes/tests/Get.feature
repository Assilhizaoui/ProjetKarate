Feature: Get API Demo 

Background: 
 * url 'https://reqres.in/api'
 * header Accept = 'application/json'

Scenario: Localhost Server 
Given url 'http://localhost:3000/etudiant/2'
When method GET
Then status 200

Scenario: Get Demo 1 
Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200
And print response 
And print responseStatus
And print responseTime 
And print responseHeaders 
And print responseCookies

# Get with Background 
Scenario: Get Demo 2 
Given path '/users?page=2'
When method GET
Then status 200
And print response 


# Get with Path , Parameters 
Scenario: Get Demo 3
Given path '/users'
And param page = 2
When method GET
Then status 200
And print response 
