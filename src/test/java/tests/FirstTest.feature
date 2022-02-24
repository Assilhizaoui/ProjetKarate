Feature: Sample API Tests 
 @tag1
 Scenario: Test a sample GET API 
 Given url 'http://localhost:3000/etudiant/2'
 When method GET 
 Then status 200

 