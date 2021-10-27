Feature: To test functionality of the Patient

  Scenario: Successfully navigated on the HAPI FHIR page
    Given driver 'http://localhost:8080/'
    And maximize()
    And delay(2000)
    And waitFor("//a[@id='leftResourcePatient']")
    When click("//a[@id='leftResourcePatient']")
    And waitFor("//a[@id='crud-tab']")
    When click("//a[@id='crud-tab']")
    And waitFor("//button[@id='read-btn']")
    When click("//button[@id='read-btn']")
    Then waitFor("//body/form[@id='outerForm']/div[1]/div[1]/div[2]/div[1]/div[2]")
