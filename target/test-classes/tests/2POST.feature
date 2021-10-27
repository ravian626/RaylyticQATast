Feature: Generate different FHIR Patient resources

  Background: #we use this tag for the common url #def is used for defining variable.
    * url 'http://localhost:8080/fhir'
    * header Accept = 'application/json'

  #* def expectedOutput = read("response.json")
  #Post with Read Request Body From File
  Scenario: To test POST method is working for FHIR Patients
    Given path '/Patient'
    And def requestBody = read("request.json")
    And request requestBody
    When method POST
    Then status 201    
    And print response
