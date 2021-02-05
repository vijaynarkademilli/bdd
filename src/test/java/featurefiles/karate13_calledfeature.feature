Feature: Karate Test Suit 11
  Called Feature

  @rest
  Scenario: Called Feature Test case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print responseTime
    * print response
    * match responseType == "xml"
    * assert responseTime <= 2000
    * match response //string == "104"