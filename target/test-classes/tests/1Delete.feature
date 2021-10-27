Feature: Delete all existing data in order to clear the database

  Scenario: To test DELETE method is working for an expung endpoint
    Given url 'http://localhost:8080'
    When method DELETE
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
