Feature: POST API Demo 

Background: 
* url 'http://localhost:3000'
* header Accept = 'application/json'
* def expectedOutput = read('response.json') 

Scenario: Post Demo 1
Given url 'https://reqres.in/api/users'
And request {"email":"assil.elhizaoui@esprit.tn" , "first_name":"Hizaoui"}
When method post
Then status 201
And print response

Scenario: Post Demo localhost Server 
Given path '/etudiant'
And request {"name":"Assil" , "age":"25" , "moy":"60" }
When method post 
Then status 201
And match response ==  {"moy": "60", "name": "Assil", "id": 86,"age": "25"}
And print response

Scenario: Post Demo Read data from Json File 
Given path '/etudiant'
And request {"name":"Assil" , "age":"25" , "moy":"60" }
When method post 
Then status 201
And match response == expectedOutput 
And print response

Scenario: Read Body from Data file 
Given path '/etudiant'
And def projectPath = karate.properties['user.dir']
And print projectPath
And def filePath = projectPath+'\src\test\java\data\requestPost.json'
And print filePath
And def requestBody = read(filePath)
And request requestBody
When method post 
Then status 201 
And print response